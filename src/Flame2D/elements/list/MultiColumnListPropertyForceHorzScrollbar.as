/*!
\brief
Property to access the 'always show' setting for the horizontal scroll bar of the list box.

\par Usage:
- Name: ForceHorzScrollbar
- Format: "[text]"

\par Where [Text] is:
- "True" to indicate that the horizontal scroll bar will always be shown.
- "False" to indicate that the horizontal scroll bar will only be shown when it is needed.
*/
package Flame2D.elements.list
{
    import Flame2D.core.properties.FlameProperty;
    import Flame2D.core.properties.FlamePropertyHelper;
    
    public class MultiColumnListPropertyForceHorzScrollbar extends FlameProperty
    {
        public function MultiColumnListPropertyForceHorzScrollbar()
        {
            super(
                "ForceHorzScrollbar",
                "Property to get/set the 'always show' setting for the horizontal scroll bar of the list box.  Value is either \"True\" or \"False\".",
                "False");
        }
        
        override public function getValue(receiver:*):String
        {
            return FlamePropertyHelper.boolToString((receiver as FlameMultiColumnList).isHorzScrollbarAlwaysShown());
        }
        
        
        override public function setValue(receiver:*, value:String):void
        {
            (receiver as FlameMultiColumnList).setShowHorzScrollbar(FlamePropertyHelper.stringToBool(value));
        }

    }
}