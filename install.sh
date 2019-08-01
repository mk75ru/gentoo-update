#!/bin/sh
DIR=`pwd`
echo "Запускаем из каталога где хранятся исходные файлы(под sudo)"
cp  $DIR/gentoo-update.oldsys.v2/*    /usr/local/sbin/
cp  $DIR/gentoo-update.oldsys.v2.txt  /usr/local/share/doc/gentoo-update/gentoo-update.oldsys.v2.txt
cp  $DIR/man-gentoo-update.sh         /usr/local/bin/
