//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package
{
	import flash.display.Sprite;
	import robotlegs.bender.demos.hello.App;

	[SWF(width="600", height="400", frameRate="30", backgroundColor="#FFFFFF")]
	public class HelloFlash extends Sprite
	{

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private var _app:App;

		/*============================================================================*/
		/* Constructor                                                                */
		/*============================================================================*/

		public function HelloFlash()
		{
			_app = new App();
			addChild(_app);
		}
	}
}

