function assume() {
  source ~/.secrets
  eval `aws-role -r $1 $2`
}
