#!/bin/bash
d=$(date "+%d")
if [ $d -le 9 ]
then
cal|sed -r "s/\b$(date "+%d")\b/*/"
else
cal|sed -r "s/\b$(date "+%d")\b/**/"
fi