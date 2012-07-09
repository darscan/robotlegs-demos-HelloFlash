//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.demos.hello.views
{
	import flash.display.Sprite;
	import flash.text.TextField;

	public class MessageWriterView extends Sprite implements IMessageWriter
	{

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private const _textField:TextField = new TextField();

		/*============================================================================*/
		/* Constructor                                                                */
		/*============================================================================*/

		public function MessageWriterView()
		{
			_textField.width = 600;
			_textField.height = 400;
			_textField.text = "";
			_textField.selectable = false;
			addChild(_textField);
		}

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		public function writeMessage(message:String):void
		{
			_textField.appendText(message + "\n")
		}
	}
}
