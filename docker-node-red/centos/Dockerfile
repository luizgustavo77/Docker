FROM centos:latest

MAINTAINER Luiz Gustavo <lgfreitas@yami.com.br>

LABEL descricao="YMI node-red"

# Install tools
RUN yum -y update && yum clean all
RUN yum install -y \
	epel-release \
	vim \
	apt-utils \
	sudo \
        zip \
        wget \
        curl \
        net-tools \
        git \
	gnupg2 \
	procps \
    && yum clean all
RUN yum -y update && yum clean all

# Environment variable
ENV FLOWS=flows.json
ENV NODE_PATH=/usr/src/node-red/node_modules:/data/node_modules

# Install nodejs
RUN yum install -y gcc-c++ make && yum clean all
RUN curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash - && yum clean all
RUN yum install -y nodejs && yum clean all

# Install node-red
RUN yum install -y \
	npm \
	&& yum clean all
RUN npm install -g \
	--unsafe-perm \
	node-red \
        node-red-admin \
	node-pre-gyp \
	pm2 \
	&& yum clean all
COPY package.json /root/.node-red/
COPY log.js /root/.node-red/
COPY settings.js /root/.node-red/
COPY shell_container.sh /root/

# Update
RUN yum -y update && yum -y upgrade && yum clean all

# Expoe porta
EXPOSE 1880

# Diretorio padra inicia
WORKDIR /root/
