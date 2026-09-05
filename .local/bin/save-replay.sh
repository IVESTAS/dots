#!/bin/sh -e

killall -SIGUSR1 gpu-screen-recorder && sleep 0.5 && notify-send -t 1500 -u low -- "GPU Screen Recorder" "Replay saved"
pkill -RTMIN+12 i3blocks
