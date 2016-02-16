ami-headlessX11

This package provides a server with all necessary packages and configurations to run a headless X11 server using Xvfb. 
It has been paricularly set up to make installation of a headless X11 server on Amazon's AWS painless and easy but can be used for any situation where a headless X11 server is desired.

It has been tested on ubuntu 14.04 but will most likely work for other releases down to 12.04. 

Requirements:
Ubuntu distribution installed on PC

Installation
------------
sudo apt-get update 
sudo apt-get install gdebi
sudo gdebi ami-headless-x11_<version>_amd64.deb
sudo reboot

The package can also be installed by clicking on the package in the file manager but we do recommend to do a 'sudo apt-get update' before doing that.

After reboot the X-server should run using Xvfb. Verify this by 'ps -ef | grep Xvfb'.As part of the installation the account 'ubuntu' will be set up to auto login and try to start b11 as the remoting tool. 


Running
-------
In order to get access to the desktop remotel, we recommend installing vnc or b11 from Colorado Code Craft.
