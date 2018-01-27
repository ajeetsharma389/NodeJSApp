FROM openjdk:8-jdk-alpine
MAINTAINER Oleg Nenashev <o.v.nenashev3@gmail.com>

ENV HOME /var/jenkins
RUN addgroup -S -g 10000 jenkins
RUN adduser -S -u 10000 -h $HOME -G jenkins jenkins
LABEL Description="This is a base image, which provides the Jenkins agent executable (slave.jar)" Vendor="Jenkins project" Version="3.16"

ARG VERSION=3.16
ARG AGENT_WORKDIR=/Users/ajeet/CICD/nodes/JenkinsSlave/

RUN apk add --update --no-cache curl bash git openssh-client openssl \
  && curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /var/jenkins \
  #&& chmod 644 /Users/ajeet/CICD/nodes/JenkinsSlave/slave.jar \
  && apk del curl
USER jenkins
ENV AGENT_WORKDIR=${AGENT_WORKDIR}
#RUN mkdir /var/jenkins/.jenkins

VOLUME /var/jenkins/
VOLUME ${AGENT_WORKDIR}
WORKDIR /var/jenkins