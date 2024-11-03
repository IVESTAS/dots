# If running from tty1 start Hyprland
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session Hyprland
