function cloud() {
	pushd ~/git/srtools
	chruby `cat ~/git/srtools/.ruby-version`
	eval `bundle exec bin/foundation cloud:env -c $1`
	popd
}
