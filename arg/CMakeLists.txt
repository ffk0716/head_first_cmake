cmake_minimum_required(VERSION 3.12)
project(enum NONE)

function(add_student)
    cmake_parse_arguments(ARG "GRADUATED" "NAME;AGE" "HOBBIES" ${ARGN} )
    if (ARG_GRADUATED)
        message("graduated")
    endif()
    message("name: ${ARG_NAME}")
    message("age: ${ARG_AGE}")
    message("hobbies: ${ARG_HOBBIES}")
    message("unknow argument: ${ARG_UNPARSED_ARGUMENTS}") #you can use this as positional argument!
endfunction()


add_student(
    NAME eric
    AGE 18 20
    HOBBIES sleeping "watching TV"
    GRADUATED)
