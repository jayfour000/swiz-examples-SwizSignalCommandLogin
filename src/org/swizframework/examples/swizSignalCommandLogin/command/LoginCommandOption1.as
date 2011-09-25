package org.swizframework.examples.swizSignalCommandLogin.command
{
	import org.swizframework.examples.swizSignalCommandLogin.pm.LoginPM;

	public class LoginCommandOption1
	{

		[Inject]
		public var pm:LoginPM;

		public function execute(username:String = null, password:String = null):void
		{
			trace("LoginCommand.execute", username, password);
			pm.message = "Hello " + username + ". \nThank you for logging in with Option 1.  Option 1 is set up to map an instnace of a Signal Class to a Command Class";
		}
	}
}
