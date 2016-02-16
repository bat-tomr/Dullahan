#!/bin/bash
# makepkg.sh 
# creates packages to setup X11 on headless syinux system

# create installers

PKG_NAME=Dullahan
# currently just Ubuntu 14.04, soon to be extended
DISTRO=ubuntu1404
PKGSRC_DIR=packaging/$DISTRO
PKGDEST_DIR=installer/$DISTRO

mkdir -p $PKGDEST_DIR

fakeroot dpkg-deb --build $PKGSRC_DIR $PKGDEST_DIR
