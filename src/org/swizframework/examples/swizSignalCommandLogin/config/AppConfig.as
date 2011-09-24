package org.swizframework.examples.swizSignalCommandLogin.config
{

	import org.swizframework.core.Bean;
	import org.swizframework.core.BeanProvider;
	import org.swizframework.examples.swizSignalCommandLogin.command.LoginCommand;
	import org.swizframework.examples.swizSignalCommandLogin.command.AppSignalCommandMap;
	import org.swizframework.examples.swizSignalCommandLogin.pm.LoginPM;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignal;

	public class AppConfig extends BeanProvider
	{
		public function AppConfig(beans:Array = null)
		{
			beans = createBeans(beans);
			super(beans);
		}

		private function createBeans(beans:Array):Array
		{
			if (!beans)
			{
				beans = [];
			}

			beans.push(new Bean(new AppSignalCommandMap(), "appSignalCommandMap"));
			beans.push(new Bean(new LoginSignal(), "loginSignal"));
			beans.push(new Bean(new LoginPM(), "loginPM"));
//			beans.push(new Bean(new LoginCommand(), "loginCommand"));


			return beans;
		}
	}
}
