#!/bin/bash
echo installing autoconf...

wget "ftp://ftp.gnu.org/gnu/autoconf/autoconf-latest.tar.gz" -O $DOTSRC/autoconf.tar.gz

rm -rf $DOTSRC/autoconf
tar -zxvf $DOTSRC/autoconf.tar.gz --directory=$DOTSRC

rm -f $DOTSRC/autoconf.tar.gz
mv $DOTSRC/autoconf*/ $DOTSRC/autoconf

cd $DOTSRC/autoconf
make distclean
$DOTSRC/autoconf/configure
make

rm -f $DOTBIN/autoconf
ln -s $DOTSRC/autoconf/bin/autoconf $DOTBIN/autoconf

echo autoconf has been installed.

