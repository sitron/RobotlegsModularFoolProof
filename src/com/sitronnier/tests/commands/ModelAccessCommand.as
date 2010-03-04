package com.sitronnier.tests.commands 
{
	import com.sitronnier.tests.models.TestModel;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author sitronnier.com aka laurent prodon
	 */
	public class ModelAccessCommand extends Command 
	{
		[Inject]
		public var model:TestModel;
		
		public function ModelAccessCommand()
		{
		}

		override public function execute() : void 
		{
			model.count = 0;
		}
	}
}
