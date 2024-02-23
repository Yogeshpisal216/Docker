FROM centos:7

LABEL author="Yogi"

RUN yum install java-11-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz /opt
RUN command