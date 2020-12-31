pkgbuild-sanity-check() {
	curl --data-binary "@$1" https://coderobe.net/pkgbuild
}
