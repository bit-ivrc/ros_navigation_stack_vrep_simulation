cmake_minimum_required(VERSION 2.8.3)
project(vrep_ros_interface)

set(catkin_deps roscpp image_transport tf cv_bridge)

find_package(catkin REQUIRED rosmsg ${catkin_deps} ${MESSAGE_PACKAGES})

if(NOT DEFINED ENV{VREP_ROOT})
  message(FATAL_ERROR "Environment variable \$VREP_ROOT is not set. Please set it to point to the root directory of V-REP.")
endif()

catkin_package(CATKIN_DEPENDS ${catkin_deps})

file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/generated)
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/doc)

include_directories(include ${CMAKE_BINARY_DIR}/generated ${catkin_INCLUDE_DIRS} $ENV{VREP_ROOT}/programming/include $ENV{VREP_ROOT}/programming/common)

link_directories("/opt/ros/fuerte/lib")
link_directories("/opt/ros/groovy/lib")
link_directories("/opt/ros/hydro/lib")
link_directories("/opt/ros/indigo/lib")
link_directories("/opt/ros/jade/lib")
link_directories("/opt/ros/kinetic/lib")

option(USE_ALL_MESSAGES "Include all ROS Messages from the current environment" OFF)

if(USE_ALL_MESSAGES)
  # Try to use all messages available
  # Warn as this could mess up (e.g., a package has .msg files it does not generate headers for)
  message(WARNING "Trying to use ALL available ROS Messages."
          "This could result in a larger build than expected, or something could go wrong.")
  execute_process(
          COMMAND rosmsg list
          OUTPUT_FILE ${CMAKE_BINARY_DIR}/generated/messages.txt)

else(USE_ALL_MESSAGES)
  # Use the shipped meta/messages.txt as a starting point
  file(COPY ${CMAKE_SOURCE_DIR}/meta/messages.txt DESTINATION ${CMAKE_BINARY_DIR}/generated)

  if(MESSAGE_PACKAGES)
    # Get custom message list from the given MESSAGE_PACKAGES
    foreach(pkg ${MESSAGE_PACKAGES})
      execute_process(
              COMMAND rosmsg package ${pkg}
              OUTPUT_VARIABLE _rosmsg_output
              ERROR_VARIABLE _rosmsg_error)
      if(_rosmsg_error)
        string(REPLACE "\n" "\n  "  _rosmsg_error ${_rosmsg_error})
        message(SEND_ERROR "Error getting messages from \"${pkg}\", listed in MESSAGE_PACKAGES:\n"
                           "${_rosmsg_error}")
      else()
        message(STATUS "Including all messages from ${pkg}")
        FILE(APPEND ${CMAKE_BINARY_DIR}/generated/messages.txt ${_rosmsg_output})
      endif()
    endforeach()
  else(MESSAGE_PACKAGES)
    # Use no extra messages
    message(WARNING "Since MESSAGE_PACKAGES is not set, not including any custom ROS Messages.\n"
                    "To include custom messages specify the package names. For example:\n"
                    "  catkin build  -DMESSAGE_PACKAGES=\"control_msgs;tf2_msgs\"")

  endif(MESSAGE_PACKAGES)
endif(USE_ALL_MESSAGES)


add_custom_command(OUTPUT
    ${CMAKE_BINARY_DIR}/generated/adv.cpp ${CMAKE_BINARY_DIR}/generated/pub.cpp ${CMAKE_BINARY_DIR}/generated/ros_msg_io.cpp ${CMAKE_BINARY_DIR}/generated/ros_msg_io.h ${CMAKE_BINARY_DIR}/generated/ros_srv_io.cpp ${CMAKE_BINARY_DIR}/generated/ros_srv_io.h ${CMAKE_BINARY_DIR}/generated/srvcall.cpp ${CMAKE_BINARY_DIR}/generated/srvcli.cpp ${CMAKE_BINARY_DIR}/generated/srvsrv.cpp ${CMAKE_BINARY_DIR}/generated/sub.cpp
    COMMAND python ${CMAKE_SOURCE_DIR}/tools/generate_ros_stuff.py  ${CMAKE_BINARY_DIR}/generated/messages.txt ${CMAKE_SOURCE_DIR}/meta/services.txt ${CMAKE_BINARY_DIR}/generated/
    DEPENDS ${CMAKE_BINARY_DIR}/generated/messages.txt ${CMAKE_SOURCE_DIR}/meta/services.txt ${CMAKE_SOURCE_DIR}/tools/generate_ros_stuff.py)

if((EXISTS ${CMAKE_SOURCE_DIR}/include/stubs.h) AND (EXISTS ${CMAKE_SOURCE_DIR}/src/stubs.cpp))
  MESSAGE(STATUS "*** Using the prebuilt stubs (stubs.h and stubs.cpp) ***")
  add_library(v_repExtRosInterface src/vrep_ros_interface.cpp src/stubs.cpp src/ros_msg_builtin_io.cpp generated/ros_msg_io.cpp generated/ros_srv_io.cpp src/v_repLib_inc.cpp)
else()
  MESSAGE(STATUS "*** Generating the stubs (stubs.h and stubs.cpp) ***")
  add_custom_command(OUTPUT
    ${CMAKE_BINARY_DIR}/generated/stubs.cpp ${CMAKE_BINARY_DIR}/generated/stubs.h
    COMMAND python -m v_repStubsGen -H ${CMAKE_BINARY_DIR}/generated/stubs.h -C ${CMAKE_BINARY_DIR}/generated/stubs.cpp ${CMAKE_SOURCE_DIR}/meta/callbacks.xml
    DEPENDS ${CMAKE_SOURCE_DIR}/meta/callbacks.xml)
  add_library(v_repExtRosInterface src/vrep_ros_interface.cpp generated/stubs.cpp src/ros_msg_builtin_io.cpp generated/ros_msg_io.cpp generated/ros_srv_io.cpp src/v_repLib_inc.cpp)
endif()

if(NOT EXISTS ${CMAKE_SOURCE_DIR}/doc/reference.html)
  find_program(SAXON_PROGRAM saxon)
  if(SAXON_PROGRAM)
    MESSAGE(STATUS "*** Generating doc/reference.html ***")
    add_custom_command(OUTPUT
      ${CMAKE_BINARY_DIR}/doc/reference.html
      COMMAND ${SAXON_PROGRAM} -s:${CMAKE_SOURCE_DIR}/meta/callbacks.xml -a:on -o:${CMAKE_BINARY_DIR}/doc/reference.html
      DEPENDS ${CMAKE_SOURCE_DIR}/meta/callbacks.xml)
    add_custom_target(gendoc ALL DEPENDS ${CMAKE_BINARY_DIR}/doc/reference.html)
  else()
    MESSAGE(WARNING "'saxon' not available - will not generate documentation.")
  endif()
endif()

add_dependencies(v_repExtRosInterface ${catkin_EXPORTED_TARGETS})
target_link_libraries(v_repExtRosInterface
    pthread
    dl
    roslib
    rosconsole
    rostime
    rospack
    roscpp_serialization
    roscpp
    tf
    image_transport
    boost_system
   ${catkin_LIBRARIES}
)
