# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session Hyprland
