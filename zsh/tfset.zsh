function tfset() {
  heroku config:set -a ops-terraform-$1 TF_VAR_$2=$3
}
