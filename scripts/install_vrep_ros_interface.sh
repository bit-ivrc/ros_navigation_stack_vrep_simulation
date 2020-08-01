#!/bin/bash
set -e # exit on first error

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_DIR=$(dirname "$SCRIPT_DIR")

main()
{ 
  source /opt/ros/kinetic/setup.bash
  #fetch_all_submodules
  cd $REPO_DIR/vrep_ws
  catkin clean -y 
  catkin build anm_msgs
  catkin build dbw_mkz_msgs
  source $REPO_DIR/vrep_ws/devel/setup.bash
  #cp $REPO_DIR/vrep_ws/devel/lib/libv_repExtRosInterface.so $VREP_ROOT
  #cp $REPO_DIR/vrep_ws/devel/lib/GeographicLib.so $VREP_ROOT
  link_scene_model_files_to_vrep
}

fetch_all_submodules()
{
  cd $REPO_DIR
  git submodule -q update --init --recursive
}


link_scene_model_files_to_vrep()
{
  ln -sfn "$REPO_DIR" "$VREP_ROOT/models/v_repExtRosInterface"
}


main
