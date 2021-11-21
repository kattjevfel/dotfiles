unzd() {
    if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
    target="${1%.*}"
    unzip "$1" -d "${target##*/}"
}