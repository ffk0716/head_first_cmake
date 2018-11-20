cmake_minimum_required(VERSION 3.12)
project(enum NONE)

add_custom_command(
    OUTPUT a
    COMMAND sleep 1
    COMMAND echo "i am a" > a)

add_custom_target(gen_a
    DEPENDS a)

add_custom_target(use_a_1 ALL
    COMMAND echo user1
    COMMAND cat a
    DEPENDS gen_a)

add_custom_target(use_a_2 ALL
    COMMAND echo user2
    COMMAND cat a
    DEPENDS gen_a)

