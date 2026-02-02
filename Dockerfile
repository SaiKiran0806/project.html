FROM amazonlinux:2
MAINTAINER "sai"
RUN yum update -y
RUN yum install httpd -y
WORKDIR /var/www/html
COPY . .
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
