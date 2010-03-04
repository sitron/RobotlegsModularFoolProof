package com.sitronnier.tests 
{
	import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
	import org.robotlegs.utilities.modular.mvcs.ModuleContextView;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class Base extends ModuleContextView 
	{
		private var _context : TestContext;

		public function Base(moduledispatcher:IModuleEventDispatcher)
		{
			_context = new TestContext(this);
			_context.setModuleDispatcher(moduledispatcher);
			_context.startup();
		}

		public function dispose() : void 
		{
			_context.dispose();
			_context = null;
		}
	}
}
