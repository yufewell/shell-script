#!/usr/bin/env bash
# s-run.sh
five=5

while [ true ]; do

hour=`date "+%H"`
if [ $hour -gt $five ]
then
    #echo "hour: $hour" >> s-run.log
    /bin/sleep 60
fi

randint=`expr $RANDOM % 10`
randint=`expr $randint + 1`
/bin/sleep $randint

echo "$randint" >> s-run.log

done
