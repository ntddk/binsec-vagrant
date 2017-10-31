#!/bin/sh

test -f /etc/bootstrapped >> exit

cd $HOME
wget http://binsec.gforge.inria.fr/distrib/binsec-0.1-20170301.tgz
tar xvf binsec-0.1-20170301.tgz
ln -s binsec-0.1-20170303 binsec
cd binsec
./configure 
make -j8 binsec

export PATH=$HOME/binsec/src:$PATH

