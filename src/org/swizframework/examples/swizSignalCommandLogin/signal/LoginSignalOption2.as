package org.swizframework.examples.swizSignalCommandLogin.signal
{
	import mx.states.OverrideBase;

	import org.osflash.signals.Signal;

	public class LoginSignalOption2 extends Signal
	{
		public function LoginSignalOption2()
		{
			super(String, String);
		}

		public function dispatchHelper(username:String, password:String):void
		{
			dispatch(username, password);
		}
	}
}
