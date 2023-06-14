#!/bin/bash

# EXECUTE ONLY ONCE without starting SH

echo " "
echo "Starting the environment..."
gnome-terminal -- python3 $HOME/Robotics_ICE23_UNITN/catkin_ws/src/locosim/control/ur5_generic.py

echo " "
echo "When the environment is ready and homing complete, "
read -p "PRESS ANY KEY to continue or close terminal in case of faliure " answer

echo " "
echo "Starting the fucking spawner module..."
gnome-terminal -- rosrun environment spawnLego -bastardSon

echo " "
echo "Starting the movement module..."
gnome-terminal -- rosrun motion movement
sleep 3

echo " "
echo "Starting the bastard planner module..."
gnome-terminal -- rosrun motion planner -bastardSon
sleep 3
