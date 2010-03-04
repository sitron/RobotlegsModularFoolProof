package com.sitronnier.tests 
{
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class BaseMediator extends Mediator 
	{
		public function BaseMediator()
		{
		}

		override public function onRegister() : void 
		{
			trace(this + " onRegister");
			
//			eventMap.mapListener(eventDispatcher, ContextEvent.SHUTDOWN, listener)
		}

		override public function onRemove() : void 
		{
			trace(this + " onRemove");
			
			super.onRemove();
		}
	}
}
