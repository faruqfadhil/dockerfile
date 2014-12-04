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


RUN apt-get install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
