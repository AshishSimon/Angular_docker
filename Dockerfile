FROM centos

# Maintainer name 
MAINTAINER Ashish Simon George "<email>"

#RUN yum upgrade
RUN yum -y update

# Run install commands for angular
RUN yum -y install epel-release
RUN yum -y install gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs

# set working directory
RUN mkdir  /usr/src/app
WORKDIR /usr/src/app

# Instaling Angular 7.2.6
RUN npm install -g @angular/cli

# Run npm install for install from package.json
#COPY ../ui_service/aws-test/package.json /usr/src/app/package.json
RUN npm install

# start app
CMD ng serve --host 0.0.0.0
