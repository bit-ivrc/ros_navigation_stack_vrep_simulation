cmake_minimum_required(VERSION 2.8.3)
project(vrep_stubs_gen)

find_package(catkin REQUIRED)

catkin_package()

catkin_python_setup()

INSTALL(DIRECTORY src/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_PYTHON_DESTINATION}
        FILES_MATCHING PATTERN "*.in")
