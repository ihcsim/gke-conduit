#!/bin/bash

# allow current user to create cluster roles
kubectl create clusterrolebinding cluster-admin-binding-$USER \
  --clusterrole cluster-admin \
  --user `gcloud config get-value account`

conduit install | kubectl apply -f -
