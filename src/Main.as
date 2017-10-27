package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Oelson
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			for (var i:int = 0; i < 10; i++) 
			{
				var tf:TextField = new TextField();
				tf.text = "Hello World";
				tf.y = 10 * i;
				addChild(tf);
			}
		}
	}
}