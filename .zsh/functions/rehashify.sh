rehashify() {
	mkdir -p md5
	mv -t md5 md5_*
	cd md5 && hashify.sh
	mv ./* ../
	cd ..
	rmdir md5
} 
