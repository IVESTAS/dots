#!/bin/sh

# This script requires gamemoderun as an argument in the steam launch options
# I use gamemoderun for all my games and this also makes this script work easily on launch/close
# for any game.

# This also ties with my i3blocks config. 
# dunst is required for notifications.
# Make sure to also change display flag (-w) depending on what you have

# For cs2
# LD_PREFIX="" SDL_VIDEO_DRIVER=wayland bash -c '$HOME/.local/bin/cs2-replay.sh "$@"' -- gamemoderun MANGOHUD=1 %command%  -nojoy -novid -high -sdl_displayindex 0

if pidof -q gpu-screen-recorder; then
  pkill -x gpu-screen-recorder
fi

video_path="/mnt/m2/clips"

gpu-screen-recorder \
  -w DP-1 \
  -f 60 \
  -c mp4 \
  -q ultra \
  -a "default_output|default_input" \
  -k h264 \
  -encoder gpu \
  -r 75 \
  -o "$video_path" &

REPLAY_PID=$!

# sleep 0.5

if ! kill -0 "$REPLAY_PID" 2>/dev/null; then
  notify-send "GPU Screen Recorder" "Replay failed to start!"
  exit 1
fi

notify-send "GPU Screen Recorder" "Replay started"
pkill -RTMIN+12 i3blocks

# gamemoderun
"$@" &
GAME_PID=$!

wait "$GAME_PID"
GAME_STATUS=$?

kill "$REPLAY_PID" 2>/dev/null
wait "$REPLAY_PID" 2>/dev/null
REPLAY_STATUS=$?

if [ "$REPLAY_STATUS" -eq 0 ]; then
  notify-send "GPU Screen Recorder" "Replay shutdown"
else
  notify-send "GPU Screen Recorder" \
  "Replay exited with status $REPLAY_STATUS"
fi

pkill -RTMIN+12 i3blocks

exit "$GAME_STATUS"
