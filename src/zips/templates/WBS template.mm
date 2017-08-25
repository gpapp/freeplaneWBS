<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected">
    <attribute_name VISIBLE="true" NAME="% Total cost"/>
    <attribute_name VISIBLE="true" NAME="% Total duration"/>
    <attribute_name VISIBLE="true" NAME="% Total work"/>
    <attribute_name VISIBLE="true" NAME="Level cost"/>
    <attribute_name VISIBLE="true" NAME="Level duration"/>
    <attribute_name VISIBLE="true" NAME="Level work"/>
    <attribute_name VISIBLE="true" NAME="Total cost"/>
    <attribute_name VISIBLE="true" NAME="Total duration"/>
    <attribute_name VISIBLE="true" NAME="Total work"/>
</attribute_registry>
<node TEXT="Project - Project name" FOLDED="false" ID="ID_1742037183" CREATED="1503403671829" MODIFIED="1503690066967"><hook NAME="MapStyle">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="Leaf" LAST="true">
            <attribute_exists_condition ATTRIBUTE="Cost"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Summary" LAST="false">
            <attribute_exists_condition ATTRIBUTE="Level cost"/>
        </conditional_style>
    </conditional_styles>
    <properties fit_to_viewport="false;" show_icon_for_attributes="false" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<edge STYLE="horizontal" WIDTH="2"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="3.0 pt" SHAPE_VERTICAL_MARGIN="3.0 pt" VGAP_QUANTITY="3.9999999999999996 pt"/>
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
<stylenode TEXT="Help" COLOR="#0099ff" STYLE="fork" SHAPE_HORIZONTAL_MARGIN="0.0 pt" SHAPE_VERTICAL_MARGIN="3.0 pt">
<font SIZE="12"/>
<edge COLOR="#0099ff"/>
</stylenode>
<stylenode TEXT="Summary" BACKGROUND_COLOR="#eeeeee" STYLE="wide_hexagon" NUMBERED="true">
<edge COLOR="#0066ff"/>
</stylenode>
<stylenode TEXT="Leaf" STYLE="wide_hexagon" SHAPE_HORIZONTAL_MARGIN="0.0 pt" SHAPE_VERTICAL_MARGIN="0.0 pt" NUMBERED="true">
<edge COLOR="#0066ff"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#3300cc">
<font SIZE="14"/>
<edge COLOR="#0066ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#0099ff">
<font SIZE="12"/>
<edge COLOR="#0099ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#0099ff">
<font SIZE="10"/>
<edge COLOR="#33ccff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#33ccff">
<font SIZE="10"/>
<edge COLOR="#33ccff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Total work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Total duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Total cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="Level 1 task 1" FOLDED="true" POSITION="right" ID="ID_786711536" CREATED="1503403749023" MODIFIED="1503690201077">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 2 task" ID="ID_919984244" CREATED="1503403749023" MODIFIED="1503690202237">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 3 task" ID="ID_766819258" CREATED="1503403749023" MODIFIED="1503690203205">
<attribute_layout NAME_WIDTH="61.49999816715723 pt" VALUE_WIDTH="61.49999816715723 pt"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 4 task" ID="ID_420070880" CREATED="1503403749023" MODIFIED="1503692738499">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="57" OBJECT="org.freeplane.features.format.FormattedNumber|57|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="45" OBJECT="org.freeplane.features.format.FormattedNumber|45|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="Level 4 task" ID="ID_1228326839" CREATED="1503403749023" MODIFIED="1503692753624">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="40" OBJECT="org.freeplane.features.format.FormattedNumber|40|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="Level 4 task" ID="ID_987568402" CREATED="1503403749023" MODIFIED="1503692770227">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="7" OBJECT="org.freeplane.features.format.FormattedNumber|7|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
</node>
<node TEXT="Level 3 task" ID="ID_300798353" CREATED="1503403749023" MODIFIED="1503692791432">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="120" OBJECT="org.freeplane.features.format.FormattedNumber|120|#0.####"/>
<attribute NAME="Duration" VALUE="12" OBJECT="org.freeplane.features.format.FormattedNumber|12|#0.####"/>
<attribute NAME="Work" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
</node>
<node TEXT="Level 2 task" ID="ID_576165284" CREATED="1503403749023" MODIFIED="1503690207289">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 3 task" ID="ID_300581647" CREATED="1503403749023" MODIFIED="1503690208119">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 4 task" ID="ID_401296255" CREATED="1503403749023" MODIFIED="1503692291284">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="5" OBJECT="org.freeplane.features.format.FormattedNumber|5|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="Level 4 task" ID="ID_1057816998" CREATED="1503403749023" MODIFIED="1503692316430">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="100" OBJECT="org.freeplane.features.format.FormattedNumber|100|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="7" OBJECT="org.freeplane.features.format.FormattedNumber|7|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="Level 4 task" ID="ID_1264782421" CREATED="1503403749023" MODIFIED="1503692653929">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="150" OBJECT="org.freeplane.features.format.FormattedNumber|150|#0.####"/>
<attribute NAME="Duration" VALUE="25" OBJECT="org.freeplane.features.format.FormattedNumber|25|#0.####"/>
<attribute NAME="Work" VALUE="14" OBJECT="org.freeplane.features.format.FormattedNumber|14|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
</node>
<node TEXT="Level 3 task" ID="ID_593649984" CREATED="1503403749023" MODIFIED="1503692709368">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="75" OBJECT="org.freeplane.features.format.FormattedNumber|75|#0.####"/>
<attribute NAME="Duration" VALUE="10" OBJECT="org.freeplane.features.format.FormattedNumber|10|#0.####"/>
<attribute NAME="Work" VALUE="34" OBJECT="org.freeplane.features.format.FormattedNumber|34|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="Level 3 task" ID="ID_423827550" CREATED="1503403749023" MODIFIED="1503690212156">
<attribute_layout NAME_WIDTH="89.99999731779107 pt"/>
<attribute NAME="Cost" VALUE="org.freeplane.plugin.script.proxy.ConvertibleText|org.freeplane.plugin.script.proxy.ConvertibleNumber|100" OBJECT="org.freeplane.features.format.FormattedObject|org.freeplane.plugin.script.proxy.ConvertibleText&amp;#x7c;org.freeplane.plugin.script.proxy.ConvertibleNumber&amp;#x7c;100|number:decimal:#0.####"/>
<attribute NAME="Duration" VALUE="org.freeplane.plugin.script.proxy.ConvertibleText|org.freeplane.plugin.script.proxy.ConvertibleNumber|80" OBJECT="org.freeplane.features.format.FormattedObject|org.freeplane.plugin.script.proxy.ConvertibleText&amp;#x7c;org.freeplane.plugin.script.proxy.ConvertibleNumber&amp;#x7c;80|number:decimal:#0.####"/>
<attribute NAME="Work" VALUE="org.freeplane.plugin.script.proxy.ConvertibleText|org.freeplane.plugin.script.proxy.ConvertibleNumber|75" OBJECT="org.freeplane.features.format.FormattedObject|org.freeplane.plugin.script.proxy.ConvertibleText&amp;#x7c;org.freeplane.plugin.script.proxy.ConvertibleNumber&amp;#x7c;75|number:decimal:#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
</node>
</node>
<node TEXT="Level 1 task 2" FOLDED="true" POSITION="right" ID="ID_1509581380" CREATED="1503408072520" MODIFIED="1503690212744" NUMBERED="true">
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
<node TEXT="Level 2 task example" ID="ID_851201007" CREATED="1503419196608" MODIFIED="1503692831152">
<attribute NAME="Cost" VALUE="72" OBJECT="org.freeplane.features.format.FormattedNumber|72|#0.####"/>
<attribute NAME="Duration" VALUE="84" OBJECT="org.freeplane.features.format.FormattedNumber|84|#0.####"/>
<attribute NAME="Work" VALUE="56" OBJECT="org.freeplane.features.format.FormattedNumber|56|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
<node TEXT="New task" ID="ID_1769657801" CREATED="1503692877251" MODIFIED="1503692878703">
<attribute NAME="Work" VALUE="17" OBJECT="org.freeplane.features.format.FormattedNumber|17|#0.####"/>
<attribute NAME="Duration" VALUE="32" OBJECT="org.freeplane.features.format.FormattedNumber|32|#0.####"/>
<attribute NAME="Cost" VALUE="51" OBJECT="org.freeplane.features.format.FormattedNumber|51|#0.####"/>
<attribute NAME="Level work" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level work&apos;].num0}:node[&apos;Work&apos;].num0|#0.####"/>
<attribute NAME="Level duration" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level duration&apos;].num0}:node[&apos;Duration&apos;].num0|#0.####"/>
<attribute NAME="Level cost" VALUE="=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=children.size()&gt;0?children.sum(0){it[&apos;Level cost&apos;].num0}:node[&apos;Cost&apos;].num0|#0.####"/>
<attribute NAME="% Total work" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level work&quot;].num0/map.rootNode[&quot;Total work&quot;].num0|#0.## %"/>
<attribute NAME="% Total duration" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level duration&quot;].num0/map.rootNode[&quot;Total duration&quot;].num0|#0.## %"/>
<attribute NAME="% Total cost" VALUE="=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0" OBJECT="org.freeplane.features.format.FormattedFormula|=map.rootNode[&quot;Total work&quot;].num0==0?&apos;Error&apos;:node[&quot;Level cost&quot;].num0/map.rootNode[&quot;Total cost&quot;].num0|#0.## %"/>
</node>
</node>
<node TEXT="Help" STYLE_REF="Help" POSITION="left" ID="ID_1116325963" CREATED="1503418762755" MODIFIED="1503693744698">
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
<node STYLE_REF="Help" ID="ID_1900532109" CREATED="1503418789607" MODIFIED="1503693753923"><richcontent TYPE="NODE">

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
      <i>NB: The selected note will be converted into a summary node and the task attributes will be removed from it!</i>
    </p>
    <p>
      
    </p>
    <p>
      Use the hotkey Shift+F7 (or the key you assigned to Tools/WBS/Edit node) to modify an existing WBS node, or convert a simple node to WBS.
    </p>
    <p>
      <i>NB: If the selected node has children, the editor won't work and the task attributes will be removed from it! </i>
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
