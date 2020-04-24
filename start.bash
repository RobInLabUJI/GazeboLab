#!/bin/bash
xhost +
docker run --gpus=all --rm -p 8888:8888 -e DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix gazebolab
xhost -
