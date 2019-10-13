#!/bin/bash

set -x

kubectl delete deployment.extensions/patrickfxyz-dolb-nginx-deployment service/patrickfxyz-dolb-nginx-https deployment.extensions/patrickfxyz-dolb-nginx configmap/nginx-conf

sleep 5

kubectl delete deployment.extensions/patrickfxyz-django-react-deployment

sleep 5
kubectl delete deployment.extensions/patrickfxyz-react-deployment


sleep 5

#kubectl delete persistentvolume/patrickf-postgres-pv-volume  persistentvolumeclaim/patrickf-postgres-pv-claim deployment.extensions/patrickf-postgres service/patrickf-postgres 

# sleep 5
# kubectl create -f patrickfxyz-postgresql.yml

sleep 10

#kubectl create -f patrickfxyz-django-react.yml

#sleep 10
kubectl create -f patrickfxyz-react.yml

kubectl create -f patrickfxyz-dolb.yml
