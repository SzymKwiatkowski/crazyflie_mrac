#!/bin/bash

xhost +local:root
docker run -it \
    --network=host --privileged \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --privileged \
    --ulimit memlock=-1 --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --name=bebop_simulator \
    bebop_simulator \
    bash