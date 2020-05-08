#!/bin/bash
# run as root

apt install mutt
touch $MAIL
chmod 660 $MAIL
chown `whoami`:mail $MAIL
mkdir ~/.mutt
cp /usr/share/doc/mutt/examples/gpg.rc .mutt/gpg.rc
