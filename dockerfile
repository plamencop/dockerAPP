FROM centos
MAINTAINER testname
RUN yum update -y && yum install httpd -y
EXPOSE 80
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]

