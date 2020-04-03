#!/usr/bin/env bash

pip3 install pandas
pip3 install bs4

# get current datetime
yesterday=`date -d last-day +%Y-%m-%d`
echo $yesterday

echo 'into RiceMilk root path.......'
cd /data/RiceMilk


echo 'execute CfiFinance start......'
scrapy crawl CfiFinance 
echo 'execute CfiFinance end......'

echo 'execute CfiFinance-JS start......'
scrapy crawl CfiFinance -a get_static=False -a get_JS=True
echo 'execute CfiFinance-JS end......'

echo 'into RiceMilk root path.......'
scrapy crawl NetEaseFinance -a start=$yesterday -a end=$yesterday
echo 'execute NetEaseFinance end......'

echo 'execute sohuFinance start......'
scrapy crawl sohuFinance
echo 'execute sohuFinance end......'