#!/bin/bash

echo "Stopping Tomcat server"
cd D:/apache-tomcat-7.0.69/bin

sh shutdown.sh

echo "Removing old war files"
cd D:/apache-tomcat-7.0.69/webapps

rm -r pqs

rm pqs.war

echo "Copying the war file into Tomcat"
cp E:/Jenkins/main/discern_main/dist/jenkins_main_project.war D:/apache-tomcat-7.0.69/webapps

echo "Starting Tomcat.."
cd D:/apache-tomcat-7.0.69/bin

sh startup.sh