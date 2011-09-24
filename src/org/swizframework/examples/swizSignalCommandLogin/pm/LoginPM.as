package org.swizframework.examples.swizSignalCommandLogin.pm
{
	import flash.events.Event;

	import org.osflash.signals.Signal;
	import org.swizframework.examples.swizSignalCommandLogin.model.UserModel;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignal;

	public class LoginPM
	{

		//------------------------------------------------------
		//
		// Properties
		//
		//------------------------------------------------------

		//------------------------------------------------------
		// loginSignal
		//------------------------------------------------------

		[Inject]
		public var loginSignal:LoginSignal;


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

		public function login(username:String, password:String):void
		{
			// Strong type helper method - dispatchHelper
			loginSignal.dispatchHelper(username, password);
		}
	}
}
