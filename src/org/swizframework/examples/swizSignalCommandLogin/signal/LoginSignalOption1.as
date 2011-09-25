package org.swizframework.examples.swizSignalCommandLogin.signal
{
	import mx.states.OverrideBase;

	import org.osflash.signals.Signal;

	public class LoginSignalOption1 extends Signal
	{
		public function LoginSignalOption1()
		{
			super(String, String);
		}

		public function dispatchHelper(username:String, password:String):void
		{
			dispatch(username, password);
		}
	}
}
