git clone https://github.com/CSSEGISandData/COVID-19.git &&
cd /root/COVID-19/csse_covid_19_data/csse_covid_19_daily_reports &&
curl -s https://raw.githubusercontent.com/aveekroy/covid19-scenario/master/covid19stats/assets/covid19_cases_details --output covid19_cases_details &&
clear &&
PS1="\` echo \[\e[32m\]^_^\[\e[0m\]\`\[\e[33m\][covid19-case-details]\e[0m\]\\$ " &&
clear
