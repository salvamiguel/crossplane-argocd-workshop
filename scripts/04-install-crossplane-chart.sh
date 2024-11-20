#!/bin/bash
# Apply the Crossplane Helm secret configuration
kubectl apply -f crossplane/crossplane-helm-secret.yaml
# Apply the Crossplane custom bootstrap resource
kubectl apply -f crossplane/crossplane-bootstrap.yaml
