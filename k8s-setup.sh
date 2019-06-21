#!/bin/sh

minishift start --cpus 4 --memory 8GB --disk-size 50GB
eval "$(minishift oc-env)"
oc login -u system:admin
kubectl create -f cockroachdb-statefulset.yaml
sleep 60
kubectl create -f cluster-init.yaml
sleep 30
./crdb-install-license.sh local-k8s
sleep 10
./gui-setup.sh
