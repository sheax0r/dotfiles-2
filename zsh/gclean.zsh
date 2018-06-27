function gclean() {
  cd ~/git
  for dir in $(ls -d */); do
    pushd $dir; gdmb; popd
  done
}
