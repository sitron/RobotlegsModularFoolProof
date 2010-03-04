package  
{
	import com.sitronnier.tests.events.TestEvent;

	import org.robotlegs.utilities.modular.base.ModuleEventDispatcher;

	import flash.events.EventDispatcher;

	import com.bit101.components.VBox;

	import flash.events.MouseEvent;

	import com.bit101.components.PushButton;
	import com.sitronnier.tests.Base;

	import flash.display.Sprite;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class Main extends Sprite 
	{
		private var _bases : Array = [];
		private var _moduleDispatcher : ModuleEventDispatcher;

		public function Main()
		{
			init();
		}

		public function init() : void
		{
			var vb : VBox = new VBox(this, 0, 0);			
			var addBt : PushButton = new PushButton(vb, 0, 0, "Add context", _onAddClick);
			var removeBt : PushButton = new PushButton(vb, 0, 0, "Remove all contexts", _onRemoveClick);
			var testBt : PushButton = new PushButton(vb, 0, 0, "Test model access", _onTestClick);
			
			_moduleDispatcher = new ModuleEventDispatcher();
		} 

		private function _onTestClick(event : MouseEvent) : void 
		{
			_moduleDispatcher.dispatchEvent(new TestEvent(TestEvent.TEST));
		}

		private function _onAddClick(event : MouseEvent) : void 
		{
			var base : Base = new Base(_moduleDispatcher);
			_bases.push(base);	
			addChild(base);
		}	

		private function _onRemoveClick(event : MouseEvent) : void 
		{
			var nb:int = _bases.length;
			if (nb != 0) 
			{
				for (var i : int = 0;i < nb;i++) 
				{
					var base : Base = _bases.pop() as Base;
					base.dispose();
					removeChild(base);
					base = null;	
				}
				trace("nb: " +_bases.length);		
			}
		}
	}
}
