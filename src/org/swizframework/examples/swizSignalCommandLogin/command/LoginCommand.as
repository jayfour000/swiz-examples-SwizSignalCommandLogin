package org.swizframework.examples.swizSignalCommandLogin.command
{
	import org.swizframework.examples.swizSignalCommandLogin.pm.LoginPM;

	public class LoginCommand
	{

		[Inject]
		public var pm:LoginPM;

		public function execute(username:String = null, password:String = null):void
		{
			trace("LoginCommand.execute", username, password);
			pm.message = "Hello " + username + ". \nThank you for logging in.";
		}
	}
}
