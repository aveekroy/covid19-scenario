#!/bin/bash

echo "Enter your County/State/Country Name:"
read -e county_state_country
state_us=`echo ${county_state_country}|awk -F',' '{print $2}'`
country=`echo ${county_state_country}|awk -F',' '{print $3}'`
search=`echo Unassigned, ${state_us}`
echo -e '\n'
echo "Please find the details for \"${county_state_country}\""
echo -e '\n'

function latest_count(){

    echo -e '\n'
    file=`ls -l|tail -3|head -1|awk -F' ' '{print $9}'`
    dt=`echo $file|cut -d'.' -f1`
    echo -e "Details on $dt for ${state_us} State in US along with the day by day stats for that county\n"
    cat $file|grep -w "${state_us}" &> total

    for i in `cat total|grep "${state_us}"|awk -F ',' '{print $8}'`
    do
        infected=`expr $infected + $i`
        echo -e "$infected"
    done
    echo -e "Total number of persons infected in ${state_us} is $infected."

    for i in `cat total|grep "${state_us}"|awk -F ',' '{print $9}'`
    do
        deaths=`expr $deaths + $i`
    done
    echo -e "Total number of deaths in ${state_us} is $deaths."
    rm total
}

if [ -z ${country} ]; then
        grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${county_state_country}"|sort|cut -d':' -f3-7 &> detailed_list
        cat detailed_list
        rm detailed_list
else
        grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${county_state_country}"|sort|cut -d':' -f3-7 &> detailed_list_us
        grep -rnw '/root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports' -e "${search}"|sort|cut -d':' -f3-7 >> detailed_list_us
        cat detailed_list_us
        rm detailed_list_us
        latest_count
fi
echo -e '\n'