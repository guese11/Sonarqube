#! /bin/bash

#author:serge  guetsa sonkeng
#date "2023-02-20"
#Description: this cript it to automate the installation of Sonarqube
#Follow below steps successively to install sonarqube on your centOS server. 
#This process need to be run as a regular user ( Sonarqube doesnt work when you start it as root user).

su - vagrant

sudo yum update -y
sudo yum install java-11-openjdk-devel -y

cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#to unzip the file directory we downloaded we have to install unzip

sudo yum install unzip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sudo chmod -R 775 sonarqube-9.3.0.51899.zip
cd sonarqube-9.3.0.51899.zip
cd bin
cd linux-x86-64
sh sonar.sh start

