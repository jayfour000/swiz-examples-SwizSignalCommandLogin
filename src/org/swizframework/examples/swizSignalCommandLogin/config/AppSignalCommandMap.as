package org.swizframework.examples.swizSignalCommandLogin.config
{
	import org.swizframework.examples.swizSignalCommandLogin.command.LoginCommandOption1;
	import org.swizframework.examples.swizSignalCommandLogin.command.LoginCommandOption2;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignalOption1;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignalOption2;
	import org.swizframework.utils.commands.SignalCommandMap;

	public class AppSignalCommandMap extends SignalCommandMap
	{

		/**
		 * This inejcted Signal is registerd with Swiz in AppConfig.as
		 */
		[Inject]
		public var loginSignalOption1:LoginSignalOption1;

		override protected function mapCommands():void
		{
			// Map to signal instance
			mapSignalToCommand(loginSignalOption1, LoginCommandOption1);

			// Map to signal class type - auto
			mapSignalClassToCommand(LoginSignalOption2, LoginCommandOption2);
		}
	}
}
