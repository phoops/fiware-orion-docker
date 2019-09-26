#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
export TAG=`if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master" ]]; then echo "latest"; else echo $TRAVIS_BRANCH; fi`
echo $REPO:$TAG:$COMMIT
docker tag $REPO:$COMMIT $REPO:$TAG
docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
docker push $REPO
