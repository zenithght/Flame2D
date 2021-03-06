

/*!
\brief
Property to access the sort direction setting of the list.

\par Usage:
- Name: SortDirection
- Format: "[text]"

\par Where [Text] is one of:
- "Ascending"
- "Descending"
- "None"
*/
package Flame2D.elements.list
{
    import Flame2D.core.properties.FlameProperty;
    import Flame2D.core.data.Consts;
    
    public class MultiColumnListPropertySortDirection extends FlameProperty
    {
        public function MultiColumnListPropertySortDirection()
        {
            super(
                "SortDirection",
                "Property to get/set the sort direction setting of the list.  Value is the text of one of the SortDirection enumerated value names.",
                "None");
        }
        
        override public function getValue(receiver:*):String
        {
            switch((receiver as FlameMultiColumnList).getSortDirection())
            {
                case Consts.SortDirection_Ascending:
                    return String("Ascending");
                    break;
                
                case Consts.SortDirection_Descending:
                    return String("Descending");
                    break;
                
                default:
                    return String("None");
                    break;
            }
            
        }
        
        
        override public function setValue(receiver:*, value:String):void
        {
            var dir:uint;
            
            if (value == "Ascending")
            {
                dir = Consts.SortDirection_Ascending;
            }
            else if (value == "Descending")
            {
                dir = Consts.SortDirection_Descending;
            }
            else
            {
                dir = Consts.SortDirection_None;
            }
            
            (receiver as FlameMultiColumnList).setSortDirection(dir);
        }

    }
}