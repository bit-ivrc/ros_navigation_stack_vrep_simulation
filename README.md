# ros_navigation_vrep_simulation
**For mooc**  
ros navigation simulation using vrep.  

```
git clone https://github.com/bit-ivrc/ros_navigation_stack_vrep_simulation.git && cd ros_navigation_stack_vrep_simulation
```

## install library

**If you not install ROS, just run**
```
./scripts/install_ros.sh
```
This script will install ros.

**If you have already installed ros**,  
```
./scripts/install_vrep.sh
```
This script will install vrep.

Build the `vrep_ros_interface` at the end.
```
./scripts/install_vrep_ros_interface.sh
```
```
sudo apt-get install ros-kinetic-bfl
sudo apt-get install ros-kinetic-move-base
sudo apt-get install libbullet-dev libsdl1.2-dev libsdl-image1.2-dev
```
##  compile package
```
catkin build
```

## start sumulation

1. run roscore in the termimal.
2. open vrep by running `vrep` command in the terminal(**Note**: You have to run roscore before launching vrep).
3. load the scene file `navigation_manta.ttt` under `scenes`.
```
source devel/setup.bash
roslaunch move_base move_base.launch
```
4. run simulation at vrep.
5. set goal point.

Related stacks
   https://github.com/ros-planning/navigation.git
