package org.swizframework.examples.swizSignalCommandLogin.signal
{
	import mx.states.OverrideBase;

	import org.osflash.signals.Signal;

	public class LoginSignal extends Signal
	{
		public function LoginSignal()
		{
			super(String, String);
		}

		public function dispatchHelper(username:String, password:String):void
		{
			dispatch(username, password);
		}
	}
}
