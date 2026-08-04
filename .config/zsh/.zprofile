# If running from tty1 start sway
#[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session start-hyprland 
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session sway
#[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session startplasma-wayland
#[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session niri
