

#############################################################
# Dockerfile to build Apache kafka  container images        #
# Based on CentOS                                           #
#############################################################

#Set the base image to CentOS
FROM centos

#File Author/Maintainer
MAINTAINER SOFIN ARTEM

#clean and update source
RUN yum -y update
RUN yum -y clean all

#Install wget, java-openkdk, 
RUN yum -y install wget
RUN yum -y install java-1.8.0-openjdk.x86_64

#download package
RUN wget -P /root http://www-us.apache.org/dist/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz

#unzip to /opt
RUN tar -xvf /root/kafka_2.11-0.9.0.1.tgz -C /opt

EXPOSE 9092 2181

#entrypoint
ENTRYPOINT ["/opt/kafka_2.11-0.9.0.1/bin/kafka-server-start.sh","/opt/kafka_2.11-0.9.0.1/config/server.properties"]
