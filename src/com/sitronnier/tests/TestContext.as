package com.sitronnier.tests 
{
	import com.sitronnier.tests.commands.ModelAccessCommand;
	import com.sitronnier.tests.commands.TestCommand;
	import com.sitronnier.tests.events.TestEvent;
	import com.sitronnier.tests.models.TestModel;
	import com.sitronnier.tests.views.TestMediator;
	import com.sitronnier.tests.views.TestView;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.utilities.modular.mvcs.ModuleContext;

	import flash.display.DisplayObjectContainer;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestContext extends ModuleContext 
	{
		private var _testview : TestView;

		public function TestContext(contextView : DisplayObjectContainer = null)
		{
			super(contextView);
		}

		override public function startup() : void 
		{
			mediatorMap.mapView(Base, BaseMediator);
			mediatorMap.createMediator(contextView);
			
			mediatorMap.mapView(TestView, TestMediator);			
			
			commandMap.mapEvent(ContextEvent.SHUTDOWN, TestCommand, ContextEvent);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, ModelAccessCommand, ContextEvent);
			commandMap.mapEvent(TestEvent.TEST, ModelAccessCommand, TestEvent);
			
			// this can only be garbage collected if using the latest version of SwitfSuspender
			injector.mapSingleton(TestModel);
			
			// otherwise use this (but you lose the lazy instantiation)
//			var model:TestModel = new TestModel();
//			injector.mapValue(TestModel, model);
			
			init();
		}

		public function init() : void 
		{
			_testview = new TestView();
			contextView.addChild(_testview);
			
			dispatchEvent(new ContextEvent(ContextEvent.STARTUP_COMPLETE));
		}
		
		public function dispose():void
		{			
			dispatchEvent(new ContextEvent(ContextEvent.SHUTDOWN));
			
			// test access to model
//			dispatchEvent(new ContextEvent(ContextEvent.STARTUP_COMPLETE));
			
			// unmap the Model singleton
			injector.unmap(TestModel);
			
			// test access to model
//			dispatchEvent(new ContextEvent(ContextEvent.STARTUP_COMPLETE));

			mediatorMap.removeMediatorByView(contextView);
			contextView.removeChild(_testview);
			_testview = null;
		} 
	}
}
