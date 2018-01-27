FROM google/nodejs
MAINTAINER Ajeet

WORKDIR /app
ADD package.json /app/
ADD . /var/www/srv

#WORKDIR /var/www/srv

RUN npm install
#ADD . /APP
ENV HOME /var/jenkins

RUN addgroup -S -g 10000 jenkins
RUN adduser -S -u 10000 -h $HOME -G jenkins jenkins
LABEL Description="This is a base image, which provides the Jenkins agent executable (slave.jar)" Vendor="Jenkins project" Version="3.16"

ARG VERSION=3.16
ARG AGENT_WORKDIR=/Users/ajeet/CICD/nodes/JenkinsSlave
EXPOSE 8000

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]