package org.swizframework.examples.swizSignalCommandLogin.command
{
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignal;
	import org.swizframework.utils.commands.SignalCommandMap;

	public class AppSignalCommandMap extends SignalCommandMap
	{

		[Inject]
		public var loginSignal:LoginSignal;

		override protected function mapCommands():void
		{
			mapSignalToCommand(loginSignal, LoginCommand);
		}
	}
}
