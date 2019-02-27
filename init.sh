#!/bin/sh

apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y \
  curl \
  git \
  wget \
  vim \
&& curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash \
&& . ~/.bashrc \
&& nvm install stable \
&& wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
&& dpkg -i packages-microsoft-prod.deb \
&& add-apt-repository universe \
&& apt-get install apt-transport-https \
&& apt-get update \
&& apt-get install dotnet-sdk-2.2
