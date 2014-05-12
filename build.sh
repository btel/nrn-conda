#!/bin/bash

./configure --with-nrnpython=$PYTHON --prefix=$PREFIX --without-iv
make 
make install

mv $PREFIX/x86_64/bin/* $PREFIX/bin
mv $PREFIX/x86_64/lib/* $PREFIX/lib

cd src/nrnpython
$PYTHON setup.py install --prefix=$PREFIX
