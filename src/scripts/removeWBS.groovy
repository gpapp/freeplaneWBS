// @ExecutionModes({ON_SELECTED_NODE})

import hu.itsphere.freeplanewbs.WBSHelper

map.rootNode.children.each {
    WBSHelper.removeWBS(it)
}

map.rootNode.attributes.removeAll('Total cost')
map.rootNode.attributes.removeAll('Total duration')