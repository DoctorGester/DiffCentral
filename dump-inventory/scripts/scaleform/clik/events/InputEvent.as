package scaleform.clik.events
{
   import flash.events.Event;
   import scaleform.clik.ui.InputDetails;
   
   public class InputEvent extends Event
   {
      
      public function InputEvent(type:String, details:InputDetails)
      {
         super(type,true,true);
         this.details = details;
      }
      
      public static const INPUT:String = "input";
      
      public var details:InputDetails;
      
      public function get handled() : Boolean
      {
         return isDefaultPrevented();
      }
      
      public function set handled(value:Boolean) : §void§
      {
         if(value)
         {
            preventDefault();
         }
      }
      
      override public function clone() : Event
      {
         return new InputEvent(type,this.details);
      }
      
      override public function toString() : String
      {
         return formatToString("InputEvent","type","details");
      }
   }
}
