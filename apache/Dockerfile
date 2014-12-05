FROM ubuntu:14.04
MAINTAINER wasis.putra@olx.co.id


RUN sed -i 's/archive.ubuntu.com/kambing.ui.ac.id/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y


RUN echo '*	soft	nofile	130710' >> /etc/security/limits.conf
RUN echo '*	hard	nofile	130710' >> /etc/security/limits.conf
RUN echo 'root	soft	nofile	130710' >> /etc/security/limits.conf
RUN echo 'root	hard	nofile	130710' >> /etc/security/limits.conf
RUN sed -i 's/# session    required   pam_limits.so/session    required   pam_limits.so/g' /etc/pam.d/su


RUN apt-get install apache2 libapache2-mod-php5 php5-mysql php5-gd php-pear php-apc php5-curl -y
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2


EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
