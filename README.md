# fiware-orion-docker

[![Build Status](https://travis-ci.org/phoops/fiware-orion-docker.svg?branch=master)](https://travis-ci.org/phoops/fiware-orion-docker)

This Docker image has a custom entrypoint that waits for MongoDB to come up before starting the Context Broker.

Environment variables to set:
- `MONGODB_HOST`
- `MONGODB_PORT`
