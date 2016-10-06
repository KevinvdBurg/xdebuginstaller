#!/bin/bash
# My first script

# CONTANTS
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Executed on $RIGHT_NOW by $USER"


# Functions

function installdebug
{  
	 pecl install xdebug
}

function restartnginx
{
	sudo service nginx restart
}

function restartapache
{
	sudo service apache2 restart
}



#start
echo $TIME_STAMP

while true; do
    read -p "Do you wish to install the xdebug settings? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


#echo "STATUS: Looking for file "
if [ "$1" != "" ]; then

	if [ -f "$1" ]; then
	 # echo "SUCCES: File found"
	 # echo "STATUS: Writing xdebug settings"

	 while true; do
    	read -p "Have you already installed the xdebug module? " yn
	    case $yn in
	        [Yy]* ) break;;
	        [Nn]* ) installdebug; break;;
	        * ) echo "Please answer yes or no.";;
	    esac
	done

	 now=$(pecl config-get ext_dir)
	 echo "Module directory: " $now

      echo ""
	  echo "[Xdebug]" >> $1
	  echo 'zend_extension="'$now'/xdebug.so"' >> $1
	  echo "xdebug.remote_enable=1" >> $1
	  echo "xdebug.remote_port=9000" >> $1
	  echo "xdebug.profiler_enable=1" >> $1
	  echo "xdebug.profiler_output=/tmp" >> $1
	  echo "xdebug.remote_mode=jit" >> $1

	 	echo "SUCCES: xdebug settings have been set"

	 	while :
			do
				echo "Wich webserver are you using? (apache or nginx) "
				read SEL
				case $SEL in
					"apache") restartapache; break;;
					"nginx") restartnginx; break;;
					*) ERR_MSG="Please enter a valid option!"
				esac

				# This will clear the screen so we can redisplay the menu.
				clear
			done

			echo "SUCCES: xDebug is installed. Now go configure PHPStorm"

	else
		echo "ERROR: File doesn't exist or is not accesable"
	fi
   
else
    echo "ERROR: We need a php.ini path to work! :D thnx"
fi







