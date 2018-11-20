cmake_minimum_required(VERSION 3.12)
project(enum NONE)

add_custom_command(
    OUTPUT a
    COMMAND sleep 1
    COMMAND echo "i am a" > a)

add_custom_target(gen_a
    DEPENDS a)

add_custom_command(
    OUTPUT b
    COMMAND cat a > b
    COMMAND echo "i am b" >> b
    DEPENDS gen_a a)

add_custom_target(gen_b ALL
    COMMAND cat b
    DEPENDS b)

