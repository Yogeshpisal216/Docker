FROM centos:7

LABEL author="Yogi"

RUN yum install java-11-openjdk -y
ADD source dest