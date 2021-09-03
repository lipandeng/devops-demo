#!/usr/bin/env bash
app_name='devops-jenkins'
docker stop ${app_name}
echo '--stop container--'
docker rm ${app_name}
echo '--remove container'
docker run -p 8090:8090 -name ${app_name} \
--link mysql_3307:db \
-v /etc/localtime:/etc/localtime \
-v /mydata/app/${app_name}/logs:/var/logs \
-e "SPRING_PROFILES_ACTIVE=test" \
-d devops-demo/${app_name}:1.0-SNAPSHOT
echo '--start container--'