#!/bin/bash
#!/bin/bash
version=$1

if [ ${#version} -eq 0 ];then 
    version="latest"
fi
docker build --rm -t bruceleety/nginx:$version .
docker run -d --rm --name n1 -p 8888:80 bruceleety/nginx:$version
curl http://127.0.0.1:8888 
#  docker-machine ip  →        curl http://192.168.99.100:8888
#                               curl http://192.168.99.101:8888
docker stop n1

read  -p "Push OK? (Y/n) " yn
if [ $yn == "n" ]; then
    echo "Push Cancel.."
else
    docker login
    docker push bruceleety/nginx:$version    
fi