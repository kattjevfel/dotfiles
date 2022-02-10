if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec sx 
  #XDG_SESSION_TYPE=wayland QT_QPA_PLATFORM=wayland MOZ_ENABLE_WAYLAND=1 exec dbus-run-session startplasma-wayland
fi
