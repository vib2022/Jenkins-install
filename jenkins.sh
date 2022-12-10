#!/bin/bash
#Script for Installation of Jenkins on Amazon linux
#Created by Chris on 09/12/2022
echo "Updating the repos..."
sudo yum update -y 

echo "Adding Jenkins-repo...."
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Importing a key file from Jenkins-CI....."
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade -y

echo "downloading java..... "
sudo amazon-linux-extras install java-openjdk11 -y

echo "Installing Jenkins..... "
sudo yum install jenkins -y

echo "Starting jenkins daemon..... "
sudo systemctl start jenkins

sudo systemctl enable jenkins

echo "Jenkins--Insalled"
