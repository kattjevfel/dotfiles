un7d() {
    if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
    target="${1%.*}"
    7zz x "$1" -o"${target##*/}"
}