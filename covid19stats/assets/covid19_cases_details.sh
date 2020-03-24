#!/bin/bash

date=`ls -l|awk -F' ' '{print $9}'|tail -3|head -1`

if [ "$date" >= "2020-03-23.csv" ];
echo -e "Details for '$date':"
then
echo "Enter your County/State/Country Name:"
read county_state_country
for i in `ls -l *.csv|awk -F' ' '{print $9}'`
do
cat $i|grep -w "${county_state_country}"|awk -F',' '{print $2" ----- "$3" ----- "$4" ----- "$5"---> Confirmed: "$8" ----- Deaths: "$9" ----- Recovered: "$10" ----- Active: "$11}'
done
fi

#17001,Adams,Illinois,US,2020-03-23 23:19:34,39.98815591,-91.18786813,1,0,0,0,"Adams, Illinois, US"
#else 
#     for i in `ls -l *.csv|awk -F' ' '{print $9}'`
#     do
#     cat $i|grep -w "${country}"|grep -w "${state}"|awk -F',' '{print $3"---> Confirmed: "$4" ----- Deaths: "$5" ----- Recovered: "$6}'
#     done
