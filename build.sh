#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
    sh ./configure --with-nrnpython=$PYTHON --prefix=$PREFIX --exec-prefix=$PREFIX --without-iv  PYLIBLINK='-framework Python' PYLIB='-framework Python'
else
    sh ./configure --with-nrnpython=$PYTHON --prefix=$PREFIX --exec-prefix=$PREFIX --without-iv
fi
make 
make install

#mv $PREFIX/x86_64/bin/* $PREFIX/bin
#mv $PREFIX/x86_64/lib/* $PREFIX/lib

cd src/nrnpython
$PYTHON setup.py install --prefix=$PREFIX 
