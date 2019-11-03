#!/bin/bash

set -x

kubectl delete -f patrickfxyz-react.yml

# sleep 5
# kubectl delete -f patrickfxyz-dolb.yml

sleep 5

#kubectl delete -f patrickfxyz-django.yml

sleep 5
kubectl create -f patrickfxyz-react.yml

sleep 10

#kubectl create -f patrickfxyz-dolb.yml