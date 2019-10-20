cmake_minimum_required(VERSION 3.0)
project(OpenBLAS_demo)

include(cmake/OpenBLAS.cmake)

include_directories(${OpenBLAS_INCLUDE_DIR})
add_executable(main main.cpp)
target_link_libraries(main ${OpenBLAS_LIBRARIES})
