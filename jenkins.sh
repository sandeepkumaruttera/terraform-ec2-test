#!/bin/bash

sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-openjdk
sudo dnf install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

