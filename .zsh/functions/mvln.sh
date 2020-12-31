mvln() {
	# Moves $1 to $2 and then makes a symlink from $2 to $1.
	mv -v "$1" "$2" && ln -sv "$2" "$1"
}
