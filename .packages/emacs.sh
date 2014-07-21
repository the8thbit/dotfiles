#!/bin/bash
echo installing emacs...

wget "ftp://ftp.gnu.org/gnu/emacs/emacs-24.3.tar.gz" -O $DOTSRC/emacs.tar.gz

rm -rf $HOME/.emacs.d/elpa
rm -rf $HOME/.emacs.d/el-get
rm -rf $DOTSRC/emacs
tar -zxvf $DOTSRC/emacs.tar.gz --directory=$DOTSRC

rm -f $DOTSRC/emacs.tar.gz
mv $DOTSRC/emacs*/ $DOTSRC/emacs

cd $DOTSRC/emacs/
make distclean
$DOTSRC/emacs/configure --without-x
make

rm -f $DOTBIN/emacs
ln -s $DOTSRC/emacs/src/emacs $DOTBIN/emacs

echo emacs has been installed.

