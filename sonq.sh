#!/bin/bash

## This is to get the updated Ubuntu 18.04 server for in Azure cloud

## To update the given Ubuntu 18.04 with its available repositories
sudo apt-get update

## Not Manditory
# sudo -y upgrade

# Installing the Default JRE/JDK version 11

## To install java required version version, need to update the package index:

sudo apt update

## Check if Java is already installed:

java -version

# Installing the Nginx Web Server

sudo apt update

sudo apt install nginx

# To check the IP in which your webserver is running

## 1. ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

## 2. curl -4 icanhazip.com

