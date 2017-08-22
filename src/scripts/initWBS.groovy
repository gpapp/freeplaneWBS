// @ExecutionModes({ON_SELECTED_NODE})
import hu.itsphere.freeplanewbs.WBSHelper

map.rootNode.children.each {
    WBSHelper.initWBS(it)
}
map.rootNode['Total cost']=WBSHelper.aggregateExpr('Total cost')
map.rootNode['Total duration']=WBSHelper.aggregateExpr('Total duration')