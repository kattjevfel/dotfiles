# Ripped out of https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/archlinux/archlinux.plugin.zsh
pacweb() {
    local pkg="$1"
    local infos="$(LANG=C pacman -Si "$pkg")"
    if [[ -z "$infos" ]]; then
        return
    fi
    local repo="$(grep -m 1 '^Repo' <<<"$infos" | grep -oP '[^ ]+$')"
    local arch="$(grep -m 1 '^Arch' <<<"$infos" | grep -oP '[^ ]+$')"
    xdg-open "https://www.archlinux.org/packages/$repo/$arch/$pkg/" &>/dev/null
}
