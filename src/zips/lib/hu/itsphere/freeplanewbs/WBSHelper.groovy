package hu.itsphere.freeplanewbs

import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.features.format.FormatController
import org.freeplane.features.format.FormattedFormula
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent

class WBSHelper {
    public static final java.util.List<String> ATTRIBUTES = ['work', 'duration', 'cost']

    static FormattedFormula aggregateExpr(String attr) {
        new FormattedFormula('=children.size()>0?' +
                'children.sum(0){it[\'Level ' + attr + '\'].num0}:' +
                'node[\'' + attr.capitalize() + '\'].num0', "#0.####")
    }

    static FormattedFormula percentageExpr(String attr) {
        new FormattedFormula('=map.rootNode["Total work"].num0==0?' +
                '\'Error\':' +
                'node["Level ' + attr + '"].num0/map.rootNode["Total ' + attr + '"].num0'
                , "#0.## %")
    }

    /**
     * Cleans all aggregate attributes from a node and adds the appropriate
     * attributes according to the current config
     * @param n
     * @param config
     */
    private static void cleanSingleNode(Proxy.Node n) {
        ATTRIBUTES.each {
            // for compatibility with v1.1 and below
            n.attributes.removeAll('Subtask ' + it)

            n.attributes.removeAll('Level ' + it)
            n.attributes.removeAll('% Total ' + it)
        }
    }

    /**
     * Cleans all aggregate attributes from a node and adds the appropriate
     * attributes according to the current config
     * @param n
     * @param config
     */
    private static void updateSingleNode(Proxy.Node n, ConfigProperties config) {
        cleanSingleNode(n)
        if (n.children.empty) {
            ATTRIBUTES.each {
                if (!n[it.capitalize()]) {
                    n[it.capitalize()] = createFormattedValue('0')
                }
            }
        } else {
            ATTRIBUTES.each {
                n.attributes.removeAll(it.capitalize())
            }
        }
        ATTRIBUTES.each {
            n['Level ' + it] = aggregateExpr(it)
        }
        if (config.getBooleanProperty('freeplaneWBS.generate.totals')) {
            ATTRIBUTES.each {
                n['% Total ' + it] = percentageExpr(it)
            }
        }
    }

    /**
     * Initialize the aggregates under a specific node recursively
     * @param n
     * @param config
     */
    static void initWBS(Proxy.Node n, ConfigProperties config) {
        updateSingleNode(n, config)
        n.children.each {
            initWBS(it, config)
        }
    }

    static void removeWBS(Proxy.Node n) {
        cleanSingleNode(n)
        n.children.each {
            removeWBS(it)
        }
    }


    private static void showDialog(Proxy.Node n, boolean edit, ConfigProperties config) {
        def mainFrame
        JTextField titleField
        JTextField workField
        JTextField durationField
        JTextField costField
        JButton doneButton
        SwingBuilder.edtBuilder {
            mainFrame = dialog(
                    title: TextUtils.getText("addon.freeplaneWBS.taskeditor.dialogtitle"),
                    defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                    show: false,
                    modal: true) {
                boxLayout(axis: BoxLayout.Y_AXIS)
                panel(border: BorderFactory.createEmptyBorder(10, 10, 10, 10)) {
                    gridBagLayout()

                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.name"),
                            constraints: gbc(gridx: 0, gridy: 0, ipadx: 5, fill: HORIZONTAL))
                    titleField = textField(preferredSize: new Dimension(400, 25),
                            constraints: gbc(gridx: 1, gridy: 0, gridwidth: REMAINDER, fill: HORIZONTAL))


                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.work"),
                            constraints: gbc(gridx: 0, gridy: 1, ipadx: 5, fill: HORIZONTAL))
                    workField = textField(preferredSize: new Dimension(300, 25),
                            constraints: gbc(gridx: 1, gridy: 1, gridwidth: REMAINDER, fill: HORIZONTAL))

                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.duration"),
                            constraints: gbc(gridx: 0, gridy: 2, ipadx: 5, fill: HORIZONTAL))
                    durationField = textField(preferredSize: new Dimension(300, 25),
                            constraints: gbc(gridx: 1, gridy: 2, gridwidth: REMAINDER, fill: HORIZONTAL))

                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.cost"),
                            constraints: gbc(gridx: 0, gridy: 3, ipadx: 5, fill: HORIZONTAL))
                    costField = textField(preferredSize: new Dimension(300, 25),
                            constraints: gbc(gridx: 1, gridy: 3, gridwidth: REMAINDER, fill: HORIZONTAL))
                }

                panel() {
                    boxLayout(axis: BoxLayout.X_AXIS)
                    button(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.cancel"),
                            actionPerformed: {
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                    doneButton = button(id: 'doneButton', text: TextUtils.getText("addon.freeplaneWBS.taskeditor.done"),
                            actionPerformed: {
                                // in OK button handler
                                def toUpdate
                                if (edit) {
                                    toUpdate = n
                                } else {
                                    removeLeafAttributes(n)
                                    toUpdate = n.createChild()
                                }
                                toUpdate.text = titleField.text
                                toUpdate['Work'] = createFormattedValue(workField.text)
                                toUpdate['Duration'] = createFormattedValue(durationField.text)
                                toUpdate['Cost'] = createFormattedValue(costField.text)
                                updateSingleNode(toUpdate, config)
                                mainFrame.setVisible(false)
                                mainFrame.dispose()
                            })
                }
            }
        }
        // set done button as default
        mainFrame.getRootPane().setDefaultButton(doneButton)

        // on ESC key close frame
        mainFrame.getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
                KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), TextUtils.getText("addon.freeplaneWBS.taskeditor.cancel"))
        mainFrame.getRootPane().getActionMap().put(TextUtils.getText("addon.freeplaneWBS.taskeditor.cancel"),
                new AbstractAction() {
                    void actionPerformed(ActionEvent e) {
                        mainFrame.setVisible(false)
                        mainFrame.dispose()
                    }
                })
        if (edit) {
            // fill dialog window with current nodedata
            titleField.text = n.text
            workField.text = n['Work'] ?: 0
            durationField.text = n['Duration'] ?: 0
            costField.text = n['Cost'] ?: 0
        }
        // show dialog window
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }

    private static def createFormattedValue(value) {
        try {
            return FormatController.format(Integer.parseInt(value), '#0.####')
        } catch (NumberFormatException nfe) {
            return FormatController.format('Invalid value:' + value, "#")
        }
    }

    static void removeLeafAttributes(Proxy.Node n) {
        ATTRIBUTES.each { n.attributes.removeAll(it.capitalize()) }
    }


    static void createTask(Proxy.Node n, ConfigProperties config) {
        showDialog(n, false, config)
    }

    static void editTask(Proxy.Node n, ConfigProperties config) {
        showDialog(n, true, config)
    }
}
