FROM centos:7

LABEL author="Yogi"

RUN yum install java-11-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz /opt
RUN tar -xvf /opt/apache-tomcat-8.5.99.tar.gz -C /opt

EXPOSE 8080

WORKDIR /opt/apache-tomcat-8.5.99

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war webapps/student.war
COPY student.war  webapps/student.war
CMD bin/catalina.sh run


# FROM centos:7
# RUN yum install java-11-openjdk -y
# ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz ./
# RUN tar -xzf apache-tomcat-8.5.98.tar.gz -C /opt/ && \
#     rm -rf ./apache-tomcat-8.5.98.tar.gz
# WORKDIR /opt/apache-tomcat-8.5.98
# COPY context.xml conf/context.xml
# ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar lib/mysql-connector.jar
# COPY  mysql-connector.jar webapps/mysql-connector.jar
# EXPOSE 8080
# CMD ["./bin/catalina.sh", "run"]