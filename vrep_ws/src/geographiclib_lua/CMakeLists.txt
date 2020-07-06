cmake_minimum_required(VERSION 2.8.3)
project(geographiclib_lua)

find_package(catkin REQUIRED)
catkin_package()

find_package(Lua51 REQUIRED)

# Find only the libGeographic installed by Ubuntu package manager to /usr/lib
find_library(GeographicLib_LIBRARIES Geographic PATHS /usr/lib /usr/lib/x86_64-linux-gnu NO_DEFAULT_PATH)

include_directories(include ${LUA_INCLUDE_DIR})


add_library(GeographicLib MODULE
        src/lua_Constants.cpp  src/lua_Geocentric.cpp  src/lua_GeographicLib.cpp  src/lua_LocalCartesian.cpp)
set_target_properties(GeographicLib PROPERTIES PREFIX "")

target_link_libraries(GeographicLib ${GeographicLib_LIBRARIES})

INSTALL(TARGETS GeographicLib DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
