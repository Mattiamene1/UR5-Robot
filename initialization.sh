#!/bin/bash

# EXECUTE ONLY ONCE without starting SH

# installare tutte le dipendency ed i requirements nostri
sudo apt install libeigen3-dev
pip install ipython
pip3 install torch==1.9.1+cpu torchvision==0.10.1+cpu -f https://download.pytorch.org/whl/torch_stable.html

# unlock all files
sudo chmod -R 755 $HOME/Robotics_ICE23_UNITN

# setting up the catkin_ws directory
cd $HOME/Robotics_ICE23_UNITN/catkin_ws

# delete old made folders if present
rm -rf build, logs, devel, install

# build the catkin packages 3 times to avoid errors
catkin_make install
catkin_make install
catkin_make install

# write the source into bash rc
# may be multiple lines if executed more than once
echo "source $HOME/Robotics_ICE23_UNITN/catkin_ws/install/setup.bash" >> $HOME/.bashrc

#CHECK THE LOCOSIM DIR ADAPTED TO OUR REPO
