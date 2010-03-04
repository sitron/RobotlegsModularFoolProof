package com.sitronnier.tests.views 
{
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestMediator extends Mediator 
	{
		public function TestMediator()
		{
		}

		override public function onRegister() : void 
		{
			trace(this + " onRegister");
			
			super.onRegister();
		}

		override public function onRemove() : void 
		{
			trace(this + " onRemove");
			
			super.onRemove();
		}
	}
}
