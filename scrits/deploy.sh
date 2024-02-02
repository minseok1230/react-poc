#!/bin/bash

docker ps -a -q --filter "name=react" | grep -q . && docker stop react && docker rm react | true
docker pull 288550321486.dkr.ecr.ap-northeast-2.amazonaws.com/react:minseok
docker run -d -p 3000:80 --name react 288550321486.dkr.ecr.ap-northeast-2.amazonaws.com/react:minseok
