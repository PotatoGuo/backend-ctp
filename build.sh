rm -rf build
mkdir build && cd build
cmake .. -DCMAKE_CXX_COMPILER=/usr/bin/g++-13
cmake --build . --target backend-ctp --config release