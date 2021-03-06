#!/bin/bash

## This is to get the updated Ubuntu 18.04 server for in Azure cloud

## To update the given Ubuntu 18.04 with its available repositories
sudo apt-get update

## Not Manditory
# sudo -y upgrade

# Installing the Default JRE/JDK version 11

## To install required java version , need to update the package index: and install the java

sudo apt update

## Installing java

sudo apt install -y default-jre

## Check if Java is already installed:

java -version

## Installing jdk

sudo apt install -y default-jdk

## Check if Jdk is already installed:

javac -version

# Installing the Nginx Web Server

sudo apt update

sudo apt install -y nginx

# To check the IP in which your webserver is running

## 1. ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

## 2. curl -4 icanhazip.com

## Install MySQL by typing:

sudo apt install -y  mysql-server

sudo mysql_secure_installation

## Adding sonarqube user to the system for the access
sudo adduser --system --no-create-home --group --disabled-login sonarqube

## Create sonarqube folder in /opt
sudo mkdir /opt/sonarqube

## To Install unzip. Will be used to unzip the sonarqube bundle
sudo apt-get install unzip

## To Change user to the sonarqube directory in opt
cd /opt/sonarqube

## To Download sonarqube bundle.
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.5.1.38104.zip

## To Unzip sonarqube zip file
sudo unzip sonarqube-8.5.1.38104.zip

## To Delete sonarqube zip file
sudo rm sonarqube-8.5.1.38104.zip

## To change the ownership of the /ops/sonarqube folder to sonarqube user
sudo chown -R sonarqube:sonarqube /opt/sonarqube

