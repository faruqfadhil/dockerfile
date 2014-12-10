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


RUN useradd -m -d /home/search -s /bin/bash search
RUN mkdir /home/search/source
ADD tomcat /home/search/source/tomcat
ADD solr /home/search/source/solr
ADD apache-solr /home/search/source/apache-solr
ADD jdk1.6.0_38 /home/search/source/jdk1.6.0_38
RUN chown -R search:search /home/search/


EXPOSE 8080
CMD ["/home/search/source/tomcat/bin/catalina.sh", "run"]
