#!/bin/sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    xrandr --output XWAYLAND0 --primary &
    export QT_QPA_PLATFORM=wayland &
    export MOZ_ENABLE_WAYLAND=1 &
fi