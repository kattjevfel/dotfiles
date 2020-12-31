imgdiff() {
	compare "$1" "$2" -compose src /dev/stdout | display
}