#!/bin/bash

echo "Enter your County/State/Country Name:"
read -e county_state_country
state_us=`echo ${county_state_country}|awk -F',' '{print $2}'`
country=`echo ${county_state_country}|awk -F',' '{print $3}'`
search=`echo Unassigned, ${state_us}`
echo -e '\n'
echo "Please find the details for \"${county_state_country}\""
echo -e '\n'
grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${county_state_country}"|sort|cut -d':' -f3-7 &> detailed_list_us
grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${search}"|sort|cut -d':' -f3-7 >> detailed_list_us
grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${county_state_country}"|sort|cut -d':' -f3-7 &> detailed_list

if [ ${country} == "US" ];then
cat detailed_list_us
else
cat detailed_list
fi
rm detailed_list detailed_list_us
echo -e '\n'

file=`ls -l|tail -3|head -1|awk -F' ' '{print $9'}`
echo -e "Details on $file for state ${state_us}\n"
cat $file|grep ${state_us} > total

for i in `cat total|grep ${state_us}|awk -F ',' '{print $8}'`
do
infected=`expr $infected + $i`
done
echo -e "Total number of persons infected in ${state_us} is $infected."

for i in `cat total|grep ${state_us}|awk -F ',' '{print $9}'`
do
deaths=`expr $deaths + $i`
done
echo -e "Total number of deaths in ${state_us} is $deaths."


for i in `cat total|grep ${state_us}|awk -F ',' '{print $10}'`
do
recovered=`expr $recovered + $i`
done
echo -e "Total number of deaths in ${state_us} is $recovered."

for i in `cat total|grep ${state_us}|awk -F ',' '{print $11}'`
do
active=`expr $active + $i`
done
echo -e "Total number of deaths in ${state_us} is $active."



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