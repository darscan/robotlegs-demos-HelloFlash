//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.demos.hello.views
{
	import flash.events.MouseEvent;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import robotlegs.bender.extensions.logging.impl.LogMessageParser;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.api.ILogTarget;
	import robotlegs.bender.framework.api.ILogger;
	import robotlegs.bender.framework.api.LogLevel;

	public class MessageWriterMediator extends Mediator implements ILogTarget
	{

		/*============================================================================*/
		/* Public Properties                                                          */
		/*============================================================================*/

		[Inject]
		public var view:IMessageWriter;

		[Inject]
		public var context:IContext;

		[Inject]
		public var logger:ILogger;

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private const _messageParser:LogMessageParser = new LogMessageParser();

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		override public function initialize():void
		{
			context.addLogTarget(this);
			addViewListener(MouseEvent.CLICK, onViewClick, MouseEvent);
		}

		public function log(source:Object, level:uint, timestamp:int, message:String, params:Array = null):void
		{
			view.writeMessage(timestamp
				+ ' ' + LogLevel.NAME[level]
				+ ' ' + context
				+ ' ' + source
				+ ' - ' + _messageParser.parseMessage(message, params));
		}

		/*============================================================================*/
		/* Private Functions                                                          */
		/*============================================================================*/

		private function onViewClick(event:MouseEvent):void
		{
			logger.info("View clicked. Target {0}", [event.target]);
		}
	}
}
