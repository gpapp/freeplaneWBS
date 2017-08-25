// @ExecutionModes({ON_SELECTED_NODE})
import hu.itsphere.freeplanewbs.WBSHelper

map.rootNode.children.each {
    WBSHelper.initWBS(it, config)
}
map.rootNode['Total work'] = WBSHelper.aggregateExpr('Level work')
map.rootNode['Total duration'] = WBSHelper.aggregateExpr('Level duration')
map.rootNode['Total cost'] = WBSHelper.aggregateExpr('Level cost')
