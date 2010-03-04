package com.sitronnier.tests 
{
	import flash.display.Sprite;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class Base extends Sprite 
	{
		private var _context : TestContext;

		public function Base()
		{
			_context = new TestContext(this, true);
		}

		public function dispose() : void 
		{
			_context.dispose();
			_context = null;
		}
	}
}
