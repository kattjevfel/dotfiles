#!/bin/sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    xrandr --output XWAYLAND0 --primary
fi