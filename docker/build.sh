#!/bin/bash

# 도커 빌드 명령, 뒤에 꼭 . 현재디렉터리 들어가야 함 $. build.sh
docker build --rm -t bruceleety/nginx .