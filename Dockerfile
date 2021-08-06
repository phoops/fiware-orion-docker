FROM fiware/orion:2.6.1

MAINTAINER Phoops srl

ENV MONGODB_HOST localhost
ENV MONGODB_PORT 27017

COPY docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
