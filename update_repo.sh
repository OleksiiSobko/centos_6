#!/bin/bash
unzip yum.zip
rsync -vaP ./yum.repos.d/* /etc/yum.repos.d/
sed -i 's/^\([^#]\)/#\1/g' /etc/yum.repos.d/bintray-sbt-rpm.repo
sed -i 's/^\([^#]\)/#\1/g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo 
yum clean all
yum makecache
yum update curl -y
yum install ca-certificates -y
