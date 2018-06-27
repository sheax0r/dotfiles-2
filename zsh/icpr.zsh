function icpr() {
  rsync -e "ion-client ssh" -av $1:/$3 $2
}
