
#! /bin/bash

#####################################################
# pick first available video device
# change for your needs here!
video_device=$(ls -1 /dev/video*|tail -1)
#
#####################################################

cd $(dirname "$0")

while [ 1 == 1 ]; do
	./toxcam_static -2 -T -d "$video_device" # > /dev/null 2> /dev/null
	sleep 10
done
