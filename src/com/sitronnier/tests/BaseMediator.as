package com.sitronnier.tests 
{
	import com.sitronnier.tests.commands.ModelAccessCommand;
	import com.sitronnier.tests.commands.DisposeCommand;
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
			
			// here we use an eventmap to redispatch the external test event internally
			// works ok
//			eventMap.mapListener(moduleDispatcher, TestEvent.TEST, redispatchInternally);
			
			// here we use a moduleCommandMap to map an internal command to an external event
			// it is never released, and produces an error if the rest of the context is set to null
			// to release it, manually unmap events (see onRemove below)
			moduleCommandMap.mapEvent(TestEvent.TEST, ModelAccessCommand, TestEvent);
		}

		override public function onRemove() : void 
		{
			trace(this + " onRemove");
			
			// manually unmap events
			moduleCommandMap.unmapEvent(TestEvent.TEST, ModelAccessCommand, TestEvent);
			
			super.onRemove();
		}
	}
}
