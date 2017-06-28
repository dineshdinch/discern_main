#!/bin/bash

echo "Removing old war files"
cd D:/apache-tomcat-7.0.69/webapps

rm -r jenkins_main_project

rm jenkins_main_project.war

echo "Copying the war file into Tomcat"
cp E:/Jenkins/main/discern_main/dist/jenkins_main_project.war D:/apache-tomcat-7.0.69/webapps

echo "Starting Tomcat.."
cd D:/apache-tomcat-7.0.69/bin

startup.bat