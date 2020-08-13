FROM centos:latest

MAINTAINER Luiz Gustavo <lgfreitas@yami.com.br>

LABEL descricao="YMI_Redis"

# Install tools
RUN yum -y install \
	vim \
	epel-release \
	yum-utils \
        sudo \
        zip \
        unzip \
        wget \
        curl \
        net-tools \
        git \
	deltarpm \
	sudo \
    && yum clean all

# Install Redis
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && yum clean all
RUN yum-config-manager --enable remi && yum clean all
RUN yum -y install redis && yum clean all
# outro caminho /usr/local/etc/redis/redis.conf
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

# Atualiza pacotes
RUN yum -y update && yum -y upgrade && yum clean all

EXPOSE 6379

WORKDIR /root/
