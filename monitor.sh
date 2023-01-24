#fast --json > fast.jnk
#speed=`jq < fast.jnk ".downloadSpeed"`
speed=100
date=`date "+%Y-%m-%d,%H:%M:%S"`
epoch=$(date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s")
echo "$epoch,$date,$speed" >> fast.csv
