D:

cd D:\apache-tomcat-7.0.69\webapps

del jenkins_main_project.war

rmdir jenkins_main_project

xcopy E:\Jenkins\main\discern_main\dist\jenkins_main_project.war D:\apache-tomcat-7.0.69\webapps

E:

cd E:\Jenkins\main\discern_main

tomcat_script.bat