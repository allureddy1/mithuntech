#!/bin/bash      
#title           : Install Java
#description     : 
#author		     : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		     : sh javaInstallation.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com


yum install wget -y
cd /opt
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
yum install jdk-8u131-linux-x64.rpm -y
java -version