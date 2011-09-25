package org.swizframework.examples.swizSignalCommandLogin.pm
{
	import flash.events.Event;

	import org.osflash.signals.Signal;
	import org.swizframework.examples.swizSignalCommandLogin.model.UserModel;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignalOption1;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignalOption2;

	public class LoginPM
	{

		//------------------------------------------------------
		//
		// Properties
		//
		//------------------------------------------------------

		//------------------------------------------------------
		// loginSignalOption1
		//------------------------------------------------------

		[Inject]
		public var loginSignalOption1:LoginSignalOption1;


		//------------------------------------------------------
		// loginSignalOption2
		//------------------------------------------------------

		[Inject]
		public var loginSignalOption2:LoginSignalOption2;


		//------------------------------------------------------
		// messageSignal
		//------------------------------------------------------

		public var messageSignal:Signal;


		//------------------------------------------------------
		// message
		//------------------------------------------------------

		private var _message:String;

		public function get message():String
		{
			return _message;
		}

		public function set message(value:String):void
		{
			if (_message !== value)
			{
				_message = value;
				messageSignal.dispatch(value);
			}
		}


		//------------------------------------------------------
		//
		// Public API
		//
		//------------------------------------------------------

		[PostConstruct]
		public function initialize():void
		{
			messageSignal = new Signal(String);
		}

		public function loginOption1(username:String, password:String):void
		{
			// Strong type helper method - dispatchHelper
			loginSignalOption1.dispatchHelper(username, password);
		}

		public function loginOption2(username:String, password:String):void
		{
			// Strong type helper method - dispatchHelper
			loginSignalOption2.dispatchHelper(username, password);
		}
	}
}
