un7d() {
    if [ -f /usr/bin/7zz ]; then
        sevenzipprog=7zz
    else
        sevenzipprog=7z
    fi

    if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
    target="${1%.*}"
    $sevenzipprog x "$1" -o"${target##*/}"
    #$sevenzipprog x "$1" -o"${1%.*}"
}
