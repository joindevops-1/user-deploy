#!/bin/bash
component=$1
environment=$2
APP_VERSION=$3 #dont use env here, it is reserved in linux
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
ansible-pull -U https://github.com/joindevops-1/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment -e app_version=$APP_VERSION main-tf.yaml