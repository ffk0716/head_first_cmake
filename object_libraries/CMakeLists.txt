cmake_minimum_required(VERSION 3.12)

project(hello)

set(CMAKE_CXX_STANDARD 11)

add_subdirectory(lib)

include_directories(include)
add_executable(hello main.cxx)
target_link_libraries(hello foo)
