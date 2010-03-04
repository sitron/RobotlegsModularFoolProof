package  
{
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

		public function Main()
		{
			init();
		}
		
		public function init():void
		{
			var vb:VBox = new VBox(this, 0, 0);			
			var addBt:PushButton = new PushButton(vb, 0, 0, "Add context", _onAddClick);
			var removeBt:PushButton = new PushButton(vb, 0, 0, "Remove context", _onRemoveClick);
		} 

		private function _onAddClick(event:MouseEvent) : void 
		{
			if (_base != null) return;
			_base = new Base();	
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
