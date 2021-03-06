
#README

Before you start:
Make sure zend debugger and zend optimizer are disabled!

##Install XDebug

First use the install script to make sure xDebug is installed on your webserver. Usage: 
```bash
sudo ./xdebug-install.sh /path/to/your/php.ini
```
You need to change the php.ini from your server (e.g. `/etc/php/7.0/apache2/php.ini`) and from your interpeter in PhpStorm (e.g. `/etc/php/7.0/cgi/php.ini`)

Check everything afterwards!

##Configuring
###PhpStorm with XDebug

Take the following steps:

1. 	Go to:
   * Windows & Linux: Settings -> Languages & Frameworks -> PHP
   * MAC: Preferences -> Languages & Frameworks -> PHP.
2. 	Click the ... behind your interperter.
3. 	Click the reload icon, behind the PHP exec path. The debug version should now appear underneath the path.

###JIT Debugging

Take the following steps:

1. 	Go to:
   * Windows & Linux: Settings -> Languages & Frameworks -> PHP
   * MAC: Preferences -> Languages & Frameworks -> PHP..
2. Click the ... behind your interperter.
3. Click the ... behind the configuration options.
4. Add the following key:value -> xdebug.remote_mode:jit
5. Save everything, Configuration options should now contain `-dxdebug.remote_mode=jit`.

##Verify XDebug

Take the following steps:

1. Go to Run -> Webserver Debug Validation
2. Fill in the path to the websites root
3. Fill in the url to the websites root
4. Click validate, everything should turn blue. Otherwise check you settings

##Usage

Go to: https://www.jetbrains.com/help/phpstorm/2016.2/configuring-xdebug.html#d43035e398

##Problems
This guide is based on: https://www.jetbrains.com/help/phpstorm/2016.2/configuring-xdebug.html
Maybe you can find you're answere there, otherwis check https://google.com/searuch?q=yourequestionhere

#Responsibility
We are not responsible for any harm to your systems. If you find a bug of a incorrection please notify us.
