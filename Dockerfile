FROM centos
MAINTAINER testname
RUN yum update -y && yum install httpd -y && yum install php -y
ADD info.php /var/ww/html
EXPOSE 80
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]


