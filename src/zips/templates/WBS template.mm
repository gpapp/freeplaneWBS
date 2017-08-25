<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected">
    <attribute_name VISIBLE="true" NAME="% Total cost"/>
    <attribute_name VISIBLE="true" NAME="% Total duration"/>
    <attribute_name VISIBLE="true" NAME="% Total work"/>
    <attribute_name VISIBLE="true" NAME="Cost"/>
    <attribute_name VISIBLE="true" NAME="Duration"/>
    <attribute_name VISIBLE="true" NAME="Level cost"/>
    <attribute_name VISIBLE="true" NAME="Level duration"/>
    <attribute_name VISIBLE="true" NAME="Level work"/>
    <attribute_name MANUAL="true" NAME="Total Cost">
        <attribute_value VALUE=""/>
    </attribute_name>
    <attribute_name VISIBLE="true" NAME="Total cost"/>
    <attribute_name VISIBLE="true" NAME="Total duration"/>
    <attribute_name VISIBLE="true" NAME="Total work"/>
    <attribute_name VISIBLE="true" NAME="Work"/>
</attribute_registry>
<node TEXT="Project - Project name" FOLDED="false" ID="ID_1742037183" CREATED="1503403671829" MODIFIED="1503598880026"><hook NAME="MapStyle">
    <properties show_icon_for_attributes="false" fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="wide_hexagon" SHAPE_HORIZONTAL_MARGIN="0.0 pt" SHAPE_VERTICAL_MARGIN="3.0 pt">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="horizontal" WIDTH="2"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode TEXT="Help" COLOR="#0099ff" STYLE="fork" SHAPE_HORIZONTAL_MARGIN="0.0 pt" SHAPE_VERTICAL_MARGIN="3.0 pt" NUMBERED="false">
<font SIZE="12"/>
<edge COLOR="#0099ff"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#3300cc" NUMBERED="true">
<font SIZE="14"/>
<edge COLOR="#0066ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#0099ff" NUMBERED="true">
<font SIZE="12"/>
<edge COLOR="#0099ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#0099ff" NUMBERED="true">
<font SIZE="10"/>
<edge COLOR="#33ccff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#33ccff" NUMBERED="true">
<font SIZE="10"/>
<edge COLOR="#33ccff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" NUMBERED="true"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" NUMBERED="true"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" NUMBERED="true"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" NUMBERED="true"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" NUMBERED="true"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" NUMBERED="true"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Total work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Total duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Total cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="Level 1 task 1" FOLDED="true" POSITION="right" ID="ID_786711536" CREATED="1503403749023" MODIFIED="1503676765302">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="20" OBJECT="org.freeplane.features.format.FormattedNumber|20|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 2 task" ID="ID_919984244" CREATED="1503403749023" MODIFIED="1503676805444">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="80" OBJECT="org.freeplane.features.format.FormattedNumber|80|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 3 task" ID="ID_766819258" CREATED="1503403749023" MODIFIED="1503676850093">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 4 task" ID="ID_420070880" CREATED="1503403749023" MODIFIED="1503676918464">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
<node TEXT="Level 4 task" ID="ID_1228326839" CREATED="1503403749023" MODIFIED="1503676877592">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="40" OBJECT="org.freeplane.features.format.FormattedNumber|40|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
<node TEXT="Level 4 task" ID="ID_987568402" CREATED="1503403749023" MODIFIED="1503676894338">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
</node>
<node TEXT="Level 3 task" ID="ID_300798353" CREATED="1503403749023" MODIFIED="1503676932210">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="120" OBJECT="org.freeplane.features.format.FormattedNumber|120|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
</node>
<node TEXT="Level 2 task" ID="ID_576165284" CREATED="1503403749023" MODIFIED="1503676951154">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 3 task" ID="ID_300581647" CREATED="1503403749023" MODIFIED="1503677007798">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 4 task" ID="ID_401296255" CREATED="1503403749023" MODIFIED="1503676978835">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
<node TEXT="Level 4 task" ID="ID_1057816998" CREATED="1503403749023" MODIFIED="1503676988660">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
<node TEXT="Level 4 task" ID="ID_1264782421" CREATED="1503403749023" MODIFIED="1503676998517">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
</node>
<node TEXT="Level 3 task" ID="ID_593649984" CREATED="1503403749023" MODIFIED="1503677030278">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="50" OBJECT="org.freeplane.features.format.FormattedNumber|50|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
<node TEXT="Level 3 task" ID="ID_423827550" CREATED="1503403749023" MODIFIED="1503677052939">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="80" OBJECT="org.freeplane.features.format.FormattedNumber|80|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="75" OBJECT="org.freeplane.features.format.FormattedNumber|75|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
</node>
</node>
<node TEXT="Level 1 task 2" FOLDED="true" POSITION="right" ID="ID_1509581380" CREATED="1503408072520" MODIFIED="1503677117392" NUMBERED="true">
<attribute NAME="Cost" VALUE="250" OBJECT="org.freeplane.features.format.FormattedNumber|250|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="50" OBJECT="org.freeplane.features.format.FormattedNumber|50|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
<node TEXT="Level 2 task example" ID="ID_851201007" CREATED="1503419196608" MODIFIED="1503677096158">
<attribute NAME="Cost" VALUE="72" OBJECT="org.freeplane.features.format.FormattedNumber|72|#0.####"/>
<attribute NAME="Duration" VALUE="84" OBJECT="org.freeplane.features.format.FormattedNumber|84|#0.####"/>
<attribute NAME="Subtask cost" VALUE="=children.sum(0){it[&quot;Level cost&quot;].num0}"/>
<attribute NAME="Work" VALUE="56" OBJECT="org.freeplane.features.format.FormattedNumber|56|#0.####"/>
<attribute NAME="Subtask work" VALUE="=children.sum(0){it[&quot;Level work&quot;].num0}"/>
<attribute NAME="Subtask duration" VALUE="=children.sum(0){it[&quot;Level duration&quot;].num0}"/>
<attribute NAME="Level work" VALUE="=node[&quot;Work&quot;].num0+node[&quot;Subtask work&quot;].num0"/>
<attribute NAME="Level duration" VALUE="=node[&quot;Duration&quot;].num0+node[&quot;Subtask duration&quot;].num0"/>
<attribute NAME="Level cost" VALUE="=node[&quot;Cost&quot;].num0+node[&quot;Subtask cost&quot;].num0"/>
<attribute NAME="% Total work" VALUE="=Math.round(node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total duration" VALUE="=Math.round(node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0*10000)/100+&apos;%&apos;"/>
<attribute NAME="% Total cost" VALUE="=Math.round(node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0*10000)/100+&apos;%&apos;"/>
</node>
</node>
<node TEXT="Help" STYLE_REF="Help" FOLDED="true" POSITION="left" ID="ID_1116325963" CREATED="1503418762755" MODIFIED="1503597134523">
<icon BUILTIN="help"/>
<font BOLD="true"/>
<node TEXT="What is this?" STYLE_REF="Help" ID="ID_1157036739" CREATED="1503418789596" MODIFIED="1503597134526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is a simple template for the WBS addon
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true"/>
</node>
<node STYLE_REF="Help" ID="ID_459314897" CREATED="1503418789598" MODIFIED="1503597134529"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>What does WBS addon do?</b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It aggregates the costs and durations for a task tree. It also assigns codes to each task in a doted form for later reference.
    </p>
    <p>
      
    </p>
    <p>
      You should consider the root of the map as the project root, and each node as a task.
    </p>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="Help" ID="ID_1900532109" CREATED="1503418789607" MODIFIED="1503597134533"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>How to use the addon?</b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To initialize the attributes for the addon, use the menu command Tools/WBS/Initialize WBS properties.
    </p>
    <p>
      
    </p>
    <p>
      Use the hotkey F7 (or the key you assigned to Tools/WBS/Create node) to create a new WBS node. Enter the task title, cost and duration values and you're done.
    </p>
    <p>
      
    </p>
    <p>
      Use the hotkey Shift+F7 (or the key you assigned to Tools/WBS/Edit node) to modify an existing WBS node, or convert a simple node to WBS.
    </p>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="Help" ID="ID_1894926230" CREATED="1503419035223" MODIFIED="1503597134536"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>How to use the template?</b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Create a mindmap from the template
      </li>
      <li>
        Remove the example nodes
      </li>
      <li>
        Add your own tasks using the editor
      </li>
      <li>
        When you are comfortable with the addon, remove this help
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="Help" ID="ID_1752977973" CREATED="1503418789624" MODIFIED="1503597134539"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>How to get rid of the calculations? </b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Calculations are performed dynamically by Freeplane. If you want to get rid of the entire WBS calculation use the menu command Tools/WBS/Remove WBS properties.
    </p>
    <p>
      
    </p>
    <p>
      You will not loose any of your actual data, only the dynamic calculation is removed this way.
    </p>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="Help" ID="ID_1640600126" CREATED="1503418789631" MODIFIED="1503597134542"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Known issues </b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Input sanitization is not implemented, you are responsible to enter sensible numbers in the input forms
      </li>
      <li>
        The dynamic property management is quite slow in Freeplane.
      </li>
      <li>
        No export available yet
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="Help" ID="ID_735884316" CREATED="1503418789638" MODIFIED="1503597134544"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Notes</b>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The template hides the technical attributes of the nodes, that are used for calculations.&#160;These attributes will be visible on maps not created from the template, and can be shown/hidden by using View/Node extensions/Attribute manager.
    </p>
    <p>
      
    </p>
    <p>
      The concept behind the addon is one-project one map, there is no possibility to manage multiple disjunct projects in it simultaneously.
    </p>
    <p>
      
    </p>
    <p>
      You can add your non-task nodes in the structure, but it is <i>not intended</i>&#160;to be used this way. Plain nodes will mess up the numbering system of the tasks if there are task nodes after or under the &quot;plain&quot; nodes.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
