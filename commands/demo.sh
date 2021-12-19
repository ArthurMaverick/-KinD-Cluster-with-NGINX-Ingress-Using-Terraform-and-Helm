#!/usr/bin/env sh

set -e

terraform apply -auto-approve

printf "\nWainting for the echo web server service... \n"
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml
sleep 10

printf "\nYou should see 'foo' as a response below (if you do ingress is working):\n"
curl localhost/foo


