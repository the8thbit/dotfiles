#!/bin/bash
echo installing automake...

wget "ftp://ftp.gnu.org/gnu/automake/automake-1.9.tar.gz" -O $DOTSRC/automake.tar.gz

rm -rf $DOTSRC/automake
tar -zxvf $DOTSRC/automake.tar.gz --directory=$DOTSRC

rm -f $DOTSRC/automake.tar.gz
mv $DOTSRC/automake*/ $DOTSRC/automake

cd $DOTSRC/automake
make distclean
$DOTSRC/automake/configure
make

rm -f $DOTBIN/automake
ln -s $DOTSRC/automake/bin/automake $DOTBIN/automake

echo automake has been installed.

