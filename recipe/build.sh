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
    -DPython3_EXECUTABLE=$PREFIX/bin/python

ninja install
