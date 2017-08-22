package hu.itsphere.freeplanewbs

import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.util.TextUtils
import org.freeplane.plugin.script.proxy.Proxy

import javax.swing.*
import java.awt.*
import java.awt.event.ActionEvent
import java.awt.event.KeyEvent

class WBSHelper {
    static String totalExpr(String localAttr, String aggregateAttr) {
        '=node["' + localAttr + '"].num0+node["' + aggregateAttr + '"].num0'
    }

    static String aggregateExpr(String totalExpr) {
        '=children.sum(0){it["' + totalExpr + '"].num0}'
    }

    private static void updateSingleNode(Proxy.Node n) {
        /*
        // Removed in favor of automatic node numbering
        if (!n['Title']) {
            n['Title'] = n.text
        }
        n.text = "=node['Code']+' - '+node['Title']"
        n['Code'] = "=(parent['Code']?:'')+(parent.getChildPosition(node)+1)+'.'"
         */
        n['Subtask costs'] = aggregateExpr('Total cost')
        n['Subtask duration'] = aggregateExpr('Total duration')
        n['Total cost'] = totalExpr('Cost', 'Subtask costs')
        n['Total duration'] = totalExpr('Duration', 'Subtask duration')
    }

    static void initWBS(Proxy.Node n) {
        updateSingleNode(n)
        n.children.each {
            initWBS(it)
        }
    }

    static void removeWBS(Proxy.Node n) {
        /*
         // Removed in favor of automatic node numbering
        n.attributes.removeAll('Code')
        if (n['Title']) {
            n.text = n['Title']
            n.attributes.removeAll('Title')
        }
         */
        n.attributes.removeAll('Subtask costs')
        n.attributes.removeAll('Total cost')
        n.attributes.removeAll('Subtask duration')
        n.attributes.removeAll('Total duration')
        n.children.each {
            removeWBS(it)
        }
    }


    private static void showDialog(Proxy.Node n, boolean edit) {
        def mainFrame
        JTextField titleField
        JTextField costField
        JTextField durationField
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

                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.cost"),
                            constraints: gbc(gridx: 0, gridy: 1, ipadx: 5, fill: HORIZONTAL))
                    costField = textField(preferredSize: new Dimension(300, 25),
                            constraints: gbc(gridx: 1, gridy: 1, gridwidth: REMAINDER, fill: HORIZONTAL))

                    label(text: TextUtils.getText("addon.freeplaneWBS.taskeditor.duration"),
                            constraints: gbc(gridx: 0, gridy: 2, ipadx: 5, fill: HORIZONTAL))
                    durationField = textField(preferredSize: new Dimension(300, 25),
                            constraints: gbc(gridx: 1, gridy: 2, gridwidth: REMAINDER, fill: HORIZONTAL))
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
                                def title = titleField.text
                                def cost = costField.text
                                def duration = durationField.text
                                def toUpdate
                                if (edit) {
                                    toUpdate = n
                                } else {
                                    toUpdate = n.createChild()
                                }
                                // Removed in favor of automatic node numbering
                                //toUpdate['Title'] = title
                                toUpdate.text = title
                                toUpdate['Cost'] = cost
                                toUpdate['Duration'] = duration
                                updateSingleNode(toUpdate)
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
            // Removed in favor of automatic node numbering
            // titleField.text = n['Title'] ?: n.text
            titleField.text = n.text
            costField.text = n['Cost'] ?: 0
            durationField.text = n['Duration'] ?: 0
        }
        // show dialog window
        mainFrame.pack()
        mainFrame.setLocationRelativeTo(UITools.frame)
        mainFrame.setVisible(true)
    }

    static def createTask(Proxy.Node n) {
        showDialog(n, false)
    }

    static def editTask(Proxy.Node n) {
        showDialog(n, true)
    }
}
