#!/usr/bin/env bash

# get current datetime
yesterday=`date -d last-day +%Y-%m-%d`
echo $yesterday

echo 'Extract triples.......'
cd /data/TripleRelation
python3 triple_extract.py --date $yesterday
echo 'Extract triples end.......'