# Usage: getpostlist.sh <yourblogdomain>

wget --spider -r --domains $1 http://$1 2>&1 | \
  grep --line-buffered '^--.*\d\{4\}/\d\{2\}.*\.html$' | \
  sed -e 's/^.*\(http.*\)$/\1/g'
