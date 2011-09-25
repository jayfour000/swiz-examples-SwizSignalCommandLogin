package org.swizframework.examples.swizSignalCommandLogin.command
{
	import org.swizframework.examples.swizSignalCommandLogin.pm.LoginPM;

	public class LoginCommandOption2
	{

		[Inject]
		public var pm:LoginPM;

		public function execute(username:String = null, password:String = null):void
		{
			trace("LoginCommand.execute", username, password);
			pm.message = "Hello " + username + ". \nThank you for logging in with Option 2.  Option 2 is set up to mapp a Signal Class to a Command Class";
		}
	}
}
