#!/bin/bash


echo "whats_going_on bash script" > ~/Documents/task/output.json

echo "" >> ~/Documents/task/output.json

echo "##########################" >> ~/Documents/task/output.json
echo "OS DISTRIBUTION AND VERSION:" >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json
lsb_release -a >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json

echo "##########################" >> ~/Documents/task/output.json
echo "DATE:" >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json
date >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json

echo "##########################" >> ~/Documents/task/output.json
echo "FREE MEMORY:" >> ~/Documents/task/output.json
free -m >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json

echo "##########################" >> ~/Documents/task/output.json
echo "FREE SPACE ON /:" >> ~/Documents/task/output.json
df -h / >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json


echo "##########################" >> ~/Documents/task/output.json
echo "JENKINS BUILD NUMBER:" >> ~/Documents/task/output.json

export JENKINS_BUILD_NUMBER=$(cat /var/lib/jenkins/jobs/verint/nextBuildNumber)
value=$JENKINS_BUILD_NUMBER
((value=value-1))
echo $value >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json

echo "##########################" >> ~/Documents/task/output.json
echo "JENKINS WORKSPACE PATH:" >> ~/Documents/task/output.json
export JENKINS_HOME=/var/lib/jenkins/workspace 
echo ${JENKINS_HOME} >> ~/Documents/task/output.json
echo "" >> ~/Documents/task/output.json
