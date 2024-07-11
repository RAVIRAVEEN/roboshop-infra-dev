#!/bin/bash

component=$1
envinorment=$2  #don't use env, because its a reserve word in linux

yum install python 3.12-devel python 3.12-pip -y
pip3.12 install ansible botocore boto3
ansible-pull -U https://github.com/RAVIRAVEEN/roboshop-ansible-roles-tf.git -e component=$component -e env=$envinorment main.tf.yaml