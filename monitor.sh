while true; do
	./node_modules/.bin/fast --json > fast.jnk
	cat fast.jnk
	speed=`jq < fast.jnk ".downloadSpeed"`
	date=`date "+%Y-%m-%d,%H:%M:%S"`
	epoch=$(date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s")
	echo "$epoch,$date,$speed" | tee -a fast.csv
	sleep 900 # 15 minutes
done
