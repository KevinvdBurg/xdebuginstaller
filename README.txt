
#README
-------------------------------------------------

Before you start:
Make sure zend debugger and zend optimizer are disabled!

-------------------------------------------------

##INSTALL XDEBUG ON YOUR SYSTEM

First use the install script to make sure xDebug is installed on your webserver. 
Do this on the php.ini (e.g. /etc/php/7.0/apache2/php.ini) from your webserver and the php.ini (e.g. /etc/php/7.0/cgi/php.ini) from your interpreter inside phpstorm. Make sure everyting is in the right place! 

-------------------------------------------------

##CONFIGURE PHPSTORM FOR USE WITH XDEBUG

Follow the following steps:
1.	Go to WINDOWS&LINUX: Settings->Languages & Frameworks->PHP, MAC: Preferences->Languages & Frameworks->PHP.
2. 	Click the ... behind your interperter.
3. 	Click the reload icon, behind the PHP exec path. The debug version should now appear.
4. 	Now eat a pie

##CONFIGURE JIT

Follow the following steps:
1. Go to WINDOWS&LINUX: Settings->Languages & Frameworks->PHP, MAC: Preferences->Languages & Frameworks->PHP.
2. Click the ... behind your interperter.
3. Click the ... behind the configuration options.
4. Add the following key:value -> xdebug.remote_mode:jit
5. Save everything, Configuration options should now contain "-dxdebug.remote_mode=jit".

-------------------------------------------------

##VERIFYING XDEBUG

Follow the following steps:
1. Go to Run->Webserver Debug Validation
2. Fill in the path to the websites root
3. Fill in the url to the websites root
4. Click validate, everything should turn blue. Otherwise check you settings

-------------------------------------------------

##USAGE

Go to: https://www.jetbrains.com/help/phpstorm/2016.2/configuring-xdebug.html#d43035e398

-------------------------------------------------

##PROBLEM SOLVING
This guide is based on: https://www.jetbrains.com/help/phpstorm/2016.2/configuring-xdebug.html
Maybe you can find you're answere there, otherwis check https://google.com/searuch?q=<YOUQUESTION>