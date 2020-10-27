#!/bin/bash
echo "Install Docker (in Docker)"

apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    wget \
    git \
    nano \
    vim

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#RUN apk add wget nano bash git

apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

wget https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.3.1-202002051501.git.0.2f18b8a.el7/linux/oc.tar.gz \
    && tar -xf oc.tar.gz && mv oc /usr/local/bin \
    && wget https://github.com/appsody/appsody/releases/download/0.6.2/appsody-0.6.2-linux-amd64.tar.gz \
    && tar -xvf appsody-0.6.2-linux-amd64.tar.gz && mv appsody /usr/local/bin \
    && wget https://github.com/tektoncd/cli/releases/download/v0.9.0/tkn_0.9.0_Linux_x86_64.tar.gz \
    && tar xvzf tkn_0.9.0_Linux_x86_64.tar.gz && mv tkn /usr/local/bin