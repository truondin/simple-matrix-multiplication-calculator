cmake_minimum_required(VERSION 3.20)
project(matrix_multiplication)

set(CMAKE_CXX_STANDARD 14)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++ -static-libgcc")

add_executable(matrix_multiplication main.cpp Matrix.cpp Matrix.hpp)
