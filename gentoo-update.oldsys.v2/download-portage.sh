#!/bin/sh


echo "Download portage to /usr/portage/"

DATEP=$1
URLPORTAGES="mirror.cse.iitk.ac.in/gentoo/releases/snapshots/current"
cd /usr/portage/

#First download the (older) snapshot, and verify that it is not corrupt or has been tampered with. Very old snapshots will be signed with expired Gentoo Infrastructure keys but the signature itself should still be OK:
wget http://${URLPORTAGES}/portage-$DATEP.tar.bz2{,.gpgsig,.md5sum,.umd5sum}
gpg --verify portage-$DATEP.tar.bz2.gpgsig portage-$DATEP.tar.bz2
#
#Extract the (older) snapshot:
#
#mv /usr/portage /usr/portage.latest
tar xjpf portage-$DATEP.tar.bz2 -C /usr

sync

rm portage-*
