// @ExecutionModes({ON_SELECTED_NODE})


import hu.itsphere.freeplanewbs.WBSHelper
import org.freeplane.core.ui.components.UITools

import javax.swing.*

if (node.children.empty) {
    WBSHelper.editTask(node, config)
} else {
    UITools.showMessage("This is not a leaf WBS task\n(removing stale attibutes, if any)",
            JOptionPane.WARNING_MESSAGE)
    WBSHelper.removeLeafAttributes(node)
}
