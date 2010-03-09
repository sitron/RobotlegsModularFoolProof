package com.sitronnier.tests.models 
{
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestModel extends Actor 
	{
		private var _count : int = 0;

		public function TestModel()
		{
			trace(this + " constructor");
		}
		
		public function dispose():void
		{
			trace(this + " dispose");	
		} 
		
		public function count():void
		{
			_count++;	
			trace("model is alive, count is: " + _count);
		} 
	}
}
