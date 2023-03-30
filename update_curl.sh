#!/bin/bash
unzip yum.zip
rsync -vaP ./yum.repos.d/* /etc/yum.repos.d/
yum clean all
yum makecache
yum update curl -y
yum install ca-certificates -y
