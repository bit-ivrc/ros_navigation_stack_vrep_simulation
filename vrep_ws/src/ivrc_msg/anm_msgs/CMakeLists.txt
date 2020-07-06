cmake_minimum_required(VERSION 2.8.3)
project(anm_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
    roscpp
    message_generation
    std_msgs
    geometry_msgs
    dbw_mkz_msgs
)

## Add messages to be generated
add_message_files()

## Generate messages
generate_messages(
    DEPENDENCIES
    std_msgs
    geometry_msgs
    dbw_mkz_msgs
)

catkin_package(
    CATKIN_DEPENDS message_generation roscpp std_msgs geometry_msgs
)

#############
## Install ##
#############

## The header files for the messages are automatically copied to install/include/anm_msgs
