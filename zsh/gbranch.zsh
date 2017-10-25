function gbranch() {
  git checkout -b $1
  git branch --set-upstream-to=origin/$1 $1
}
