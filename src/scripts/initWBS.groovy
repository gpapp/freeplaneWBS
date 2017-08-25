// @ExecutionModes({ON_SELECTED_NODE})
import hu.itsphere.freeplanewbs.WBSHelper

map.rootNode.children.each {
    WBSHelper.initWBS(it, config)
}
WBSHelper.ATTRIBUTES.each {
    map.rootNode['Total '+it] = WBSHelper.aggregateExpr(it)

}
