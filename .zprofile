#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#    #exec sx 
#    exec dbus-run-session startplasma-wayland
#  
#    ## use systemd-environment-d-generator(8) to generate environment, and export those variables
#    #export $(run-parts /usr/lib/systemd/user-environment-generators | xargs)
#    #export QT_QPA_PLATFORMTHEME=qt5ct
#    #exec sway
#fi
