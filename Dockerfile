# DOCKERFILE 1.1.0
FROM dit4c/dit4c-platform-base
MAINTAINER t.dettrick@uq.edu.au

# Install NPM
RUN yum install -y nodejs tar gcc-c++ && \
  curl -L https://npmjs.org/install.sh | clean=no sh

# Install Hipache
RUN npm -g install hipache

ADD /etc /etc

EXPOSE 8080

CMD ["/usr/bin/hipache", "--config", "/etc/hipache.json"]
