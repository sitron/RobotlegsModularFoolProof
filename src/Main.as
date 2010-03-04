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
		private var _base : Base;
		private var _moduleDispatcher : ModuleEventDispatcher;

		public function Main()
		{
			init();
		}
		
		public function init():void
		{
			var vb:VBox = new VBox(this, 0, 0);			
			var addBt:PushButton = new PushButton(vb, 0, 0, "Add context", _onAddClick);
			var removeBt:PushButton = new PushButton(vb, 0, 0, "Remove context", _onRemoveClick);
			var testBt:PushButton = new PushButton(vb, 0, 0, "Test model access", _onTestClick);
			
			_moduleDispatcher = new ModuleEventDispatcher();
		} 

		private function _onTestClick(event:MouseEvent) : void 
		{
			_moduleDispatcher.dispatchEvent(new TestEvent(TestEvent.TEST));
		}

		private function _onAddClick(event:MouseEvent) : void 
		{
			if (_base != null) return;
			_base = new Base(_moduleDispatcher);	
			addChild(_base);
		}	
		
		private function _onRemoveClick(event:MouseEvent) : void 
		{
			if (_base) 
			{
				_base.dispose();
				removeChild(_base);
				_base = null;		
			}
		}
	}
}
