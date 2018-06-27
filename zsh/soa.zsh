function "soa" {
  if test $# -lt 1; then
      echo "usage: $0 <host>"
      exit 1
  fi
  host=$1
  # assumptions here on zone boundaries.
  domain=$(echo $host | cut -d. -f2-)
  echo "Nameserver:\t\tSOA"
  echo "-----------\t\t----"
  for ns in $(dig ${domain} NS +short | sort); do
      qdata=$(dig $domain @${ns} SOA +short | cut -d' ' -f3)
      echo "${ns}\t${qdata}"
  done
}

