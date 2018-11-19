

add_subdirectory(sub)
add_library(foo foo.cxx $<TARGET_OBJECTS:sub>)
