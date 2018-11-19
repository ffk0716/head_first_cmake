cmake_minimum_required(VERSION 3.12)
project(enum NONE)

set(fruit apple CACHE STRING "fruit")
set_property(CACHE fruit PROPERTY STRINGS apple banana orange pineapple)

