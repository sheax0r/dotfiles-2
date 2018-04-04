# Usage: icp INSTANCE_ID LOCAL_FILE REMOTE_FILE
function icp() {
  rsync -e "ion-client ssh" -av $2 $1:/$3
}
