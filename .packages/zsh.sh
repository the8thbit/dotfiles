#!/bin/bash
echo installing zsh...

wget "http://sourceforge.net/projects/zsh/files/zsh/5.0.5/zsh-5.0.5.tar.bz2/" -O $DOTSRC/zsh.tar.bz2

rm -rf $DOTSRC/zsh
tar -jxvf $DOTSRC/zsh.tar.bz2 --directory=$DOTSRC

rm -f $DOTSRC/zsh.tar.bz2
mv $DOTSRC/zsh*/ $DOTSRC/zsh

cd $DOTSRC/zsh
make distclean
$DOTSRC/zsh/configure --prefix=$DOTSRC/zsh/

make
make install

rm -f $DOTBIN/zsh
ln -s $DOTSRC/zsh/bin/zsh $DOTBIN/zsh

echo zsh has been installed.
