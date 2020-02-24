#!/bin/bash      
#title           : Install Java
#description     : 
#author		     : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		     : sh javaInstallation.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com



yum install wget zip unzip -y
cd /opt
wget http://mirror.reverse.net/pub/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.zip -O apache-maven.zip
unzip apache-maven.zip
echo "export M2_HOME=/opt/apache-maven-3.6.2" >> ~/.bash_profile
echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bash_profile
source ~/.bash_profile

mvn -version