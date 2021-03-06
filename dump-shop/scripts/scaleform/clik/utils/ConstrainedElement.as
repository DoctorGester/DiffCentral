package scaleform.clik.utils
{
   import flash.display.DisplayObject;
   
   public class ConstrainedElement extends Object
   {
      
      public function ConstrainedElement(clip:DisplayObject, edges:uint, left:Number, top:Number, right:Number, bottom:Number, scaleX:Number, scaleY:Number)
      {
         super();
         this.clip = clip;
         this.edges = edges;
         this.left = left;
         this.top = top;
         this.right = right;
         this.bottom = bottom;
         this.scaleX = scaleX;
         this.scaleY = scaleY;
      }
      
      public var clip:DisplayObject;
      
      public var edges:uint;
      
      public var left:Number;
      
      public var top:Number;
      
      public var right:Number;
      
      public var bottom:Number;
      
      public var scaleX:Number;
      
      public var scaleY:Number;
      
      public function toString() : String
      {
         return "[ConstrainedElement " + this.clip + ", edges=" + this.edges + ", left=" + this.left + ", right=" + this.right + ", top=" + this.top + ", bottom=" + this.bottom + ", scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + "]";
      }
   }
}
