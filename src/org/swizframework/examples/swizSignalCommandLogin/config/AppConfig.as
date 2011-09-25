package org.swizframework.examples.swizSignalCommandLogin.config
{

	import org.swizframework.core.Bean;
	import org.swizframework.core.BeanProvider;
	import org.swizframework.examples.swizSignalCommandLogin.command.LoginCommandOption1;
	import org.swizframework.examples.swizSignalCommandLogin.pm.LoginPM;
	import org.swizframework.examples.swizSignalCommandLogin.signal.LoginSignalOption1;

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
			beans.push(new Bean(new LoginPM(), "loginPM"));
			beans.push(new Bean(new LoginSignalOption1(), "loginSignalOption1"));

			// Note: no need to add 'bean' for Commands
			// Note: no need to add 'bean' for LoginSignalOption2 since it is mapped by class type, not class instance.

			return beans;
		}
	}
}
