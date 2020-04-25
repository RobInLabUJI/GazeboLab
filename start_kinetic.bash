#!/bin/bash
xhost +
docker run --gpus=all --rm -p 8888:8888 \
           --env="DISPLAY" \
           --env="QT_X11_NO_MITSHM=1" \
           -v /tmp/.X11-unix:/tmp/.X11-unix gazebolab:kinetic
xhost -
