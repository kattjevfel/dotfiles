aurargs=(
    --chroot
    --remove
    --temp
    --pacman-conf /etc/aurutils/pacman-kattjevfel.conf
    --makepkg-conf=/etc/aurutils/makepkg-kattjevfel.conf
    --bind-rw ~/.cache/ccache:/build/.ccache
)
alias aursync='aur sync "${aurargs[@]}"'
alias aurbuild='aur build "${aurargs[@]}"'
