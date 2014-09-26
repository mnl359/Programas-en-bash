#!/bin/bash
FILE="/tmp/out.$$"
GREP="/bin/grep"
echo "Se recomienda estar conectado a una red de alta velocidad y ser usuario root"
echo -n "Desea continuar? [y,n]: "
read RES
if [ $RES = 'n' ]; then
    echo "Vuelva a intentarlo cuando quiera" 1>&2
    exit 1
else 
    if [ "$(id -u)" != "0" ]; then
  	# Make sure only root can run our script
  	echo "No posee permisos de root" 1>&2
  	exit 1
      else
      	sudo apt-get install subversion
      	sudo apt-get install git-core
      	sudo apt-get install shutter
      	sudo apt-get install gimp
      	sudo apt-get install kolourpaint4
      	sudo apt-get install gdebi
      	sudo apt-get install vlc
      	sudo apt-get install gcc
      	sudo apt-get install g++
      	sudo apt-get install alex
      	sudo apt-get install happy
      	sudo apt-get install cabal-install
      	sudo apt-get install ghci
      	sudo apt-get install latex*
      
      	sudo add-apt-repository ppa:webupd8team/sublime-text-3 
      	sudo apt-get update 
      	sudo apt-get install sublime-text-installer
      
      	sudo add-apt-repository ppa:cassou/emacs
      	sudo apt-get update
      	sudo apt-get install emacs24
      
      	wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.2_i386.deb
      	wget -O netbeans.sh https://netbeans.org/downloads/start.html?platform=linux&lang=en&option=all
      	wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
      	wget -O skype.deb http://www.skype.com/go/getskype-linux-beta-ubuntu-32
      
      	sudo gdebi dropbox.deb
      	sudo gdebi google-chrome.deb
      	sudo gdebi skype.deb
      	chmod +x netbeans.sh
      	./netbeans.sh
      	rm *.deb
      	rm *.sh
    fi
fi
