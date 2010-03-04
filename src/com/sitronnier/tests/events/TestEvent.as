package com.sitronnier.tests.events 
{
	import flash.events.Event;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestEvent extends Event 
	{
		public static const TEST : String = "TEST";

		public function TestEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		override public function clone() : Event 
		{
			return new TestEvent(type, bubbles, cancelable);
		}
	}
}
