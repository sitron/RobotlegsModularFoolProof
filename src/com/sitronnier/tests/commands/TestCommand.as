package com.sitronnier.tests.commands 
{
	import com.sitronnier.tests.models.TestModel;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class TestCommand extends Command 
	{
		[Inject]
		public var model:TestModel;
		
		public function TestCommand()
		{
		}

		override public function execute() : void 
		{
			model.dispose();
		}
	}
}
