# Dullahan
Create a headless X11 setup in the cloud and on your workstation 

## What for ?
Getting X11 up and running on a headless linux machine can sometimes by pretty tricky and time consuming, especially if the machine is not accessible or impossible to connect a display even temporarily. One particlar case are linux instances on public cloud providers like Amazon or Softlayer. Those instances come with a baremetal linux installation without X11 support and the internet is full of desperate souls looking for solutions to install X11 on their VMs, so they can remote into their instances using VNC or B11. 
Dullahan is here to help! It is a simple installer that makes the task of installing X11 for headless servers really easy.

## Status
At the moment Dullahan only exists for Debian and only has been thoroughly tested on Ubuntu but RPM based distributions are to come soon. It has been tested on Amazon Ubuntu Server 14.04 LTS and on SoftLayer Ubuntu 14.04 instances as well as on standalone workstations.

## How to create the Dullahan installer
If you don't want to build the installer yourself, you can download any prepackaged installers from the installer/ directory (i.e. installer/ubuntu1404/dullahan_1.0_amd64.deb) and go directly to 'How to use the Dullahan installer'.

After cloning the repo, just do

./makepkg.sh

and the script will create a debian package under installer/<distro>

## How to use the Dullahan installer


### Ubuntu

#### from the command line
Use gdebi to install Dullahan:

1. Install gdebi:
```sudo apt-get install gdebi```

2. Install Dullahan:
```sudo gdebi installer/<distro>/dullahan_<..>.deb```

3. reboot:
```sudo reboot```

#### via GUI (that would actually require X11 to run already...)

Just double click the installer package (installer/ubuntuxx/dullahan_<..>.deb) and follow the online instructions.



