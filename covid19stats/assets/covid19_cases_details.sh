#!/bin/bash

echo "Enter your County/State/Country Name:"
read -e county_state_country
echo -e '\n'
echo "Please find the details for \"${county_state_country}\""
echo -e '\n'
grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${county_state_country}"|sort|cut -d':' -f3-7 &> detailed_list
cat detailed_list
echo -e '\n'


#Before 23rd March
# #!/bin/bash

# date=`ls -l|awk -F' ' '{print $9}'|tail -3|head -1`

# if [ "$date" >= "2020-03-23.csv" ];
# #echo -e "Details for '$date':"
# then
#     echo "Enter your County/State/Country Name:"
#     read county_state_country
#     for i in `ls -l *.csv|awk -F' ' '{print $9}'`
#     do
#     cat $i|grep -w "${county_state_country}"|awk -F',' '{print $2" ----- "$3" ----- "$4" ----- "$5"---> Confirmed: "$8" ----- Deaths: "$9" ----- Recovered: "$10" ----- Active: "$11}'
#     done
# else 
#     for i in `ls -l *.csv|awk -F' ' '{print $9}'`
#     do
#     cat $i|grep -w "${country}"|grep -w "${state}"|awk -F',' '{print $3"---> Confirmed: "$4" ----- Deaths: "$5" ----- Recovered: "$6}'
#     done
# fi