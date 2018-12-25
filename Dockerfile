FROM ubuntu:16.04

WORKDIR tmp
ADD https://github.com/cloudfoundry/bosh-cli/releases/download/v5.3.1/bosh-cli-5.3.1-linux-amd64 .
RUN apt-get update && apt-get install -y build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt-dev libxml2-dev libssl-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev sqlite3
RUN chmod +x bosh-cli-5.3.1-linux-amd64 && mv bosh-cli-5.3.1-linux-amd64 /usr/bin/bosh
WORKDIR /
