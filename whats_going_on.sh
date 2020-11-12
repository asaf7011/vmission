#!/bin/bash


echo "whats_going_on bash script" > ~/output.json

echo "" >> ~/output.json

echo "##########################" >> ~/output.json
echo "OS DISTRIBUTION AND VERSION:" >> ~/output.json
echo "" >> ~/output.json
lsb_release -a >> ~/output.json
echo "" >> ~/output.json

echo "##########################" >> ~/output.json
echo "DATE:" >> ~/output.json
echo "" >> ~/output.json
date >> ~/output.json
echo "" >> ~/output.json

echo "##########################" >> ~/output.json
echo "FREE MEMORY:" >> ~/output.json
free -m >> ~/output.json
echo "" >> ~/output.json

echo "##########################" >> ~/output.json
echo "FREE SPACE ON /:" >> ~/output.json
df -h / >> ~/output.json
echo "" >> ~/output.json


echo "##########################" >> ~/output.json
echo "JENKINS BUILD NUMBER:" >> ~/output.json

export JENKINS_BUILD_NUMBER=$(cat /var/lib/jenkins/jobs/verint/nextBuildNumber)
value=$JENKINS_BUILD_NUMBER
((value=value-1))
echo $value >> ~/output.json
echo "" >> ~/output.json

echo "##########################" >> ~/output.json
echo "JENKINS WORKSPACE PATH:" >> ~/output.json
export JENKINS_HOME=/var/lib/jenkins/workspace 
echo ${JENKINS_HOME} >> ~/output.json
echo "" >> ~/output.json
