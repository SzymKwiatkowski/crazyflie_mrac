# Crazyflie MRAC project
Using simulator for crazyflie drone.

## Simulator setup
Simulator is built in docker for ros noetic using Dockerfile. To build docker use following command in repository root directory:
```bash
docker build -t crazyflie_simulator .
```

Afterwards you can use `run.sh` and `attach.sh` scripts to use build image. After attaching to it run `roscore` and then use following command:
```bash
roslaunch rotors_gazebo crazyflie2_hovering_example.launch 
```