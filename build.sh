#!/bin/bash

./configure --with-nrnpython=$PYTHON --prefix=$PREFIX --without-iv
make 
make install
cd src/nrnpython
$PYTHON setup.py install
