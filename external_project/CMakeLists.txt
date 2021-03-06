cmake_minimum_required(VERSION 3.12)
project(ext)

include(ExternalProject)
set_directory_properties(PROPERTIES EP_BASE ${CMAKE_CURRENT_BINARY_DIR})

ExternalProject_Add(gtest1
    GIT_REPOSITORY git@github.com:abseil/googletest.git
    GIT_TAG release-1.8.1
    CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
    -DCMAKE_CXX_FLAGS=-fPIC)

ExternalProject_Get_Property(gtest1 INSTALL_DIR SOURCE_DIR BINARY_DIR STAMP_DIR)
message("EP_BASE mode")
message("install: ${INSTALL_DIR}")
message("source:  ${SOURCE_DIR}")
message("binary:  ${BINARY_DIR}")
message("stamp:   ${STAMP_DIR}")

ExternalProject_Add(gtest2
    GIT_REPOSITORY git@github.com:abseil/googletest.git
    PREFIX gtest2
    GIT_TAG release-1.8.1
    CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
    -DCMAKE_CXX_FLAGS=-fPIC)

ExternalProject_Get_Property(gtest2 INSTALL_DIR SOURCE_DIR BINARY_DIR STAMP_DIR)
message("PREFIX mode")
message("install: ${INSTALL_DIR}")
message("source:  ${SOURCE_DIR}")
message("binary:  ${BINARY_DIR}")
message("stamp:   ${STAMP_DIR}")
