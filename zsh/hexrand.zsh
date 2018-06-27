function hexrand() {
  hexdump -n $1 -e '8/8 "%08X" 1 "\n"' /dev/random
}
