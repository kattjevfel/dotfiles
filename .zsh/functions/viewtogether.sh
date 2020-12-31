viewtogether() {
	viewtogether_dir="$(mktemp -d)"
	ln -st "$viewtogether_dir" "$@"
	qimgv "$viewtogether_dir"
	rm -rf "$viewtogether_dir"
}
