package com.sitronnier.tests.models 
{
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestModel extends Actor 
	{
		private var _count : int;

		public function TestModel()
		{
			trace(this + " constructor");
		}
		
		public function dispose():void
		{
			trace(this + " dispose");	
		} 
		
		public function set count(n:int):void
		{
			_count = n;	
			trace("count: " + _count);
		} 
	}
}
