cmake_minimum_required(VERSION 3.16.3)

project(ezc3d_test)

find_package(ezc3d CONFIG REQUIRED)

add_executable(${CMAKE_PROJECT_NAME} main.cpp)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ezc3d)
target_compile_features(${CMAKE_PROJECT_NAME} PRIVATE cxx_std_17)
