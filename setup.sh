#!/bin/bash

source /opt/ros/$ROS_DISTRO/setup.bash && \
cd /root/ws && rosdep update && rosdep install -y --from-paths src -i &&  \
source /opt/ros/$ROS_DISTRO/setup.bash && \
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release -DCATKIN_ENABLE_TESTING=False && \
catkin build