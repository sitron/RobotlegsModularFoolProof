package com.sitronnier.tests 
{
	import com.sitronnier.tests.events.TestEvent;

	import org.robotlegs.utilities.modular.mvcs.ModuleMediator;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class BaseMediator extends ModuleMediator 
	{
		public function BaseMediator()
		{
		}

		override public function onRegister() : void 
		{
			trace(this + " onRegister");
			
			eventMap.mapListener(moduleDispatcher, TestEvent.TEST, redispatchInternally);
//			eventMap.mapListener(eventDispatcher, ContextEvent.SHUTDOWN, listener)
		}

		override public function onRemove() : void 
		{
			trace(this + " onRemove");
			
			super.onRemove();
		}
	}
}
