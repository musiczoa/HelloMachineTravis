#!/bin/bash

if [ ! -z "$TRAVIS_TAG" ]; then
    echo "This commit is tagged commit. then we will deploy."
else
    echo "This commit is not tagged commit. then we will commit and push tag."
    echo $GH_REF
    echo $GH_TOKEN
    echo $TRAVIS_BRANCH
    echo $TRAVIS_BUILD_NUMBER

    git config --global user.email "hwa.hyeon@insertcoin.me"
    git config --global user.name "musiczoa"
    export GIT_TAG=$TRAVIS_BRANCH-0.1.$TRAVIS_BUILD_NUMBER
    git tag $GIT_TAG -a -m "Generated tag from TravisCI for build $TRAVIS_BUILD_NUMBER"
    git push "https://${GH_TOKEN}@${GH_REF}" --tags
fi
