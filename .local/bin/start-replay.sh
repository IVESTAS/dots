#!/bin/sh

pidof -q gpu-screen-recorder && exit 0
video_path="/mnt/m2/clips"
sound_source="$(pactl info | grep 'Default Sink' | awk '{print $3;}').monitor"
gpu-screen-recorder -w DP-1 -f 60 -c mp4 -q ultra -a "default_output|default_input" -k h264 -encoder gpu -r 120 -o "$video_path" &

record_pid=$!

sleep 0.5

if kill -0 "$GSR_PID" 2>/dev/null; then
  notify-send "GPU Screen Recorder" "Replay started successfully!"
else
  notify-send -u critical "GPU Screen Recorder" "Replay failed to start!"
  exit 1
fi

pkill -RTMIN+12 i3blocks

trap 'kill $GSR_PID 2>/dev/null; exit' INT TERM
wait $record_pid
