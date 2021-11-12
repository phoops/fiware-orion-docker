FROM fiware/orion:3.3.0-PRE-137

LABEL maintainer="Phoops info@phoops.it"
LABEL project="Fiware-Orion-Docker"

ENV MONGODB_HOST localhost
ENV MONGODB_PORT 27017

COPY docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
