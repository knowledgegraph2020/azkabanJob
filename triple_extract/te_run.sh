#!/usr/bin/env bash
pip3 install pyltp
# get current datetime
yesterday=`date -d last-day +%Y-%m-%d`
echo $yesterday

echo 'Extract triples.......'
cd /data/TripleRelation
/usr/bin/python3 triple_extract.py --date $yesterday
echo 'Extract triples end.......'