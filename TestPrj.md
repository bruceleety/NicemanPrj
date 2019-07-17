# 프로젝트 실행

## 깃에서 새로운 레포지터리 만듦
* Docker tool box 설치
* Docker Quick Start Terminal 실행 : 도커&Nginx 는 여기서 설치
* Vagrant 설치/실행 : 쿠버네티스는 여기서 설치

## 새 디렉터리에서 아래 클론 시행
$ git clone https://github.com/bruceleety/NicemanPrj.git

## 폴더이동 및 사용자 등록
$ cd NicemanPrj
$ git config --global user.name "Bruce Lee"
$ git config --global user.email "bruceleety@gmail.com"

## 디렉터리에서 수정한것 깃허브에 추가
* 모두 로컬 디렉토리에 넣어 $ git add -A
* 로컬디렉토리에서 커밋 $ git commit -m "initial commit"
* 서버 변경사항 깃허브로 추가 $ git push
* 깃허브 수정사항 서버로 추가 $ git pull

## 폴더 아키텍쳐
* Docker Script : ./docker
* Kubernetes : ./kubernetes

## Usage

* Docker Build
```
도커 만들어서 엔진엑스 올림

cd ./docker
. build.sh

```

* Docker Hub Push
```
수정 사항 깃허브에 올림

cd ./docker
. push.sh

```

* Kubernetes Provisioning
```
cd ./kubernetes
. kubprovision.sh

```

## 쿠버네티스 만들기 yaml File 만들고 실행하기
[root@node1 /]# kubectl run nginx1 --image=brucleety/nginx --port=80 -o yaml > /vagrant/bruceleety/kubernetes/deploy.yaml
[root@node1 /]# kubectl creat -f /vagrant/bruceleety/kubernetes/deploy.yaml

