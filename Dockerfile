# /home/ec2-user/Dockerfile
FROM centos
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install httpd
RUN echo "Hello World my httpd docker image!!" > /var/www/html/index.html
EXPOSE 80
CMD apachectl -D FOREGROUND