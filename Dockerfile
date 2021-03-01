FROM fiware/orion:2.5.2

MAINTAINER Phoops srl

ENV MONGODB_HOST localhost
ENV MONGODB_PORT 27017

COPY docker-entrypoint.sh /usr/bin/
RUN chmod 777 /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
