#!/bin/bash

export USER_NAME=drinkingteam

cd ./src/ui && bash docker_build.sh && docker push $USER_NAME/ui
cd ../post-py && bash docker_build.sh && docker push $USER_NAME/post
cd ../comment && bash docker_build.sh && docker push $USER_NAME/comment

#for i in ui post-py comment; do cd src/$i; bash docker_build.sh; cd -; done
