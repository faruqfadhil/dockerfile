FROM ubuntu:12.04
MAINTAINER wasis.putra@olx.co.id


RUN sed -i 's/archive.ubuntu.com/kambing.ui.ac.id/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y


RUN echo '*	soft	nofile	130710' >> /etc/security/limits.conf
RUN echo '*	hard	nofile	130710' >> /etc/security/limits.conf
RUN echo 'root	soft	nofile	130710' >> /etc/security/limits.conf
RUN echo 'root	hard	nofile	130710' >> /etc/security/limits.conf
RUN sed -i 's/# session    required   pam_limits.so/session    required   pam_limits.so/g' /etc/pam.d/su


RUN apt-get install apache2-doc apache2-mpm-prefork apache2-utils apache2.2-bin apache2.2-common libapache2-mod-php5 -y
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2


RUN apt-get install php5 php5-cli php5-common php5-dev php5-curl php5-gd php5-mcrypt php5-memcache php5-memcached php5-mysql php5-snmp php5-sqlite php5-xcache php-pear -y
RUN apt-get install make libxml2-dev libcurl4-gnutls-dev -y
RUN pear install pecl/solr && echo 'extension=solr.so' > /etc/php5/conf.d/solr.ini

ADD phpredis /phpredis
ADD install-phpredis.sh /
RUN bash install-phpredis.sh


EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
