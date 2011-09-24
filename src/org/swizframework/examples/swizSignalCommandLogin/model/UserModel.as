package org.swizframework.examples.swizSignalCommandLogin.model
{


	public class UserModel
	{
		//------------------------------------------------------
		// username
		//------------------------------------------------------

		private var _username:String;

		public function get username():String
		{
			return _username;
		}

		//------------------------------------------------------
		// password
		//------------------------------------------------------

		private var _password:String;

		public function get password():String
		{
			return _password;
		}


		public function UserModel(username:String, password:String)
		{
			_username = username;
			_password = password;
		}

		public function toString():String
		{
			return "username: " + username + " password: " + password;
		}
	}
}
