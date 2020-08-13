#!/bin/dash

cd /root/.node-red/
npm install
pm2 start node-red
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo " */5 * * * * pm2 reload all" >> mycron
#install new cron file
crontab mycron
rm mycron
