#! bin/bash
sudo yum install git -y

# Java Dependancies for Jenkins
sudo dnf install java-17-amazon-corretto -y

# Jenkins Installation 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Maven Installation 
sudo yum install maven -y

# Tomcat Installation 
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz
sudo tar -xvzf apache-tomcat-9.0.88.tar.gz
ls
