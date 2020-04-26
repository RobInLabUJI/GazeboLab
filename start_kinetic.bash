#!/bin/bash
xhost +local:root

docker run -it \
    --gpus=all \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    gazebolab:kinetic
    /bin/bash

xhost -local:root
