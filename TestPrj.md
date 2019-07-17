# 프로젝트 실행

## 깃에서 새로운 레포지터리 만듦
* Docker tool box 설치
* Docker Quick Start Terminal 실행

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
cd ./docker
. build.sh

```

* Docker Hub Push
```
cd ./docker
. push.sh

```

* Kubernetes Provisioning
```
cd ./kubernetes
. kubprovision.sh

```