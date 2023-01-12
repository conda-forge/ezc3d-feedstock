#!/bin/bash
mkdir build
cd build

cmake ../ \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DBUILD_EXAMPLE=OFF \
    -DBINDER_MATLAB=OFF \
    -D$backend_name_in_build=ON \
    -DOctave_ezc3d_INSTALL_DIR=$PREFIX/Octave \
    -DPython3_EXECUTABLE=$PREFIX/bin/python

ninja install

# Octave can't be tested from meta.yaml because of the install path not know in that file
if [ $backend == "octave" ] && [ "$OSTYPE" == "darwin" ]; 
then 
    octave --eval "addpath('$PREFIX/Octave/ezc3d_octave'); c = ezc3dRead();"
fi

