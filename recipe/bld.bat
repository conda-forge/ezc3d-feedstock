mkdir build
cd build

cmake ../^
    -G"NMake Makefiles JOM"^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"^
	-DBUILD_EXAMPLE=OFF^
	-DBINDER_MATLAB=OFF^
    -DBINDER_PYTHON3=ON^
    -DCMAKE_BUILD_TYPE:STRING=Release ^
    -DPYTHON_LIBRARY=%PREFIX%/libs/python%CONDA_PY%.lib ^
    -DPYTHON_INCLUDE_DIR="%PREFIX%\include" ^
    -DPython3_EXECUTABLE="%PREFIX%/python.exe"

cmake --build ./^
    --config Release^
    --target install
