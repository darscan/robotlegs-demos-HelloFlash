//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.demos.hello
{
	import flash.display.Sprite;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.demos.hello.config.AppConfig;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;

	public class HelloFlashApp extends Sprite
	{

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private var _context:IContext;

		/*============================================================================*/
		/* Constructor                                                                */
		/*============================================================================*/

		public function HelloFlashApp()
		{
			_context = new Context()
				.extend(MVCSBundle)
				.configure(AppConfig, this);
		}
	}
}
