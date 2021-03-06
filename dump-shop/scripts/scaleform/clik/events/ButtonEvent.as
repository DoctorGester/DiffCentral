package scaleform.clik.events
{
   import flash.events.Event;
   
   public class ButtonEvent extends Event
   {
      
      public function ButtonEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, controllerIdx:uint = 0, buttonIdx:uint = 0, isKeyboard:Boolean = false, isRepeat:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.controllerIdx = controllerIdx;
         this.buttonIdx = buttonIdx;
         this.isKeyboard = isKeyboard;
         this.isRepeat = isRepeat;
      }
      
      public static const PRESS:String = "buttonPress";
      
      public static const CLICK:String = "buttonClick";
      
      public static const DRAG_OVER:String = "dragOver";
      
      public static const DRAG_OUT:String = "dragOut";
      
      public static const RELEASE_OUTSIDE:String = "releaseOutside";
      
      public var controllerIdx:uint = 0;
      
      public var buttonIdx:uint = 0;
      
      public var isKeyboard:Boolean = false;
      
      public var isRepeat:Boolean = false;
      
      override public function clone() : Event
      {
         return new ButtonEvent(type,bubbles,cancelable,this.controllerIdx,this.buttonIdx,this.isKeyboard,this.isRepeat);
      }
      
      override public function toString() : String
      {
         return formatToString("ButtonEvent","type","bubbles","cancelable","controllerIdx","buttonIdx","isKeyboard","isRepeat");
      }
   }
}
