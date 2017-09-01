function assume() {
  pushd ~/git/srtools
  chruby `cat ~/git/srtools/.ruby-version`
  source ~/.secrets
  unset AWS_SESSION_TOKEN
  eval `bundle exec bin/assume-role -r $1`
  popd
}
