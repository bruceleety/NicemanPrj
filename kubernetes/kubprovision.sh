#!/bin/bash
# kubectl delete deploy/nginx1; kubectl run nginx1 --image=bruceleety/nginx --port=80 -o yaml > /vagrant/NicemanPrj/kubernetes/deploy.yaml
# kubectl scale deployment nginx --replicas=4
kubectl delete deploy/nginx1
kubectl create -f ./deploy.yaml

# kubectl expose deployment/nginx1 --type="NodePort" --port 80 -o yaml > service.yaml
kubectl delete service/nginx1
kubectl create -f ./service.yaml

# kubectl delete deploy/nginx1