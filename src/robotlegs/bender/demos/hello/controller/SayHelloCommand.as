//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.demos.hello.controller
{
	import robotlegs.bender.framework.api.ILogger;

	public class SayHelloCommand
	{

		/*============================================================================*/
		/* Public Properties                                                          */
		/*============================================================================*/

		[Inject]
		public var logger:ILogger;

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		public function execute():void
		{
			logger.info("hello!");
		}
	}
}
