function assume() {
	pushd ~/git/srtools
	chruby `cat ~/git/srtools/.ruby-version`
	eval `bundle exec bin/assume-role -r $1`
	popd
}
