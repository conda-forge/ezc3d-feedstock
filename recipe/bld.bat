mkdir build
cd build

cmake ../ ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
	-DBUILD_EXAMPLE=OFF ^
	-DBINDER_MATLAB=OFF ^
    -DBINDER_PYTHON3=ON ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DPython3_EXECUTABLE="%PREFIX%/python.exe"

cmake --build ./ ^
    --config Release ^
    --target install
