FROM centos:7

LABEL author="Yogi"

RUN yum install httpd -y
RUN echo "Welcome to httpd page" > /var/www/html/index.html

EXPOSE 80

CMD httpd -DFORGROUND
