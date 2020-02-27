#!/usr/bin/env bash

# get current datetime
yesterday=`date -d last-day +%Y-%m-%d`
echo $yesterday

echo 'into subsidiary src.......'
cd /data/CiticChildCom/src
echo 'start filter subsidiary news.......'
/usr/bin/python3 extract_citic_news.py --date $yesterday
echo 'filter subsidiary end.......'