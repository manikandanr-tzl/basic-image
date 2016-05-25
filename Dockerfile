FROM ubuntu:14.04

MAINTAINER teezle

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

RUN apt-get install curl -y  

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install -y git 

# Removed unnecessary packages
#RUN apt-get autoremove -y

# Clear package repository cache
#RUN apt-get clean all
