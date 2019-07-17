# NicemanPrj
Niceman Prj

## Info
- 목적 : Docker & Kubernetes Build
- 구성요소 : Nginx/Htmlcode
- 요건 : 배포 스크립트

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