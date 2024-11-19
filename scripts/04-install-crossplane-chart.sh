#!/bin/bash
# Apply the Crossplane Helm secret configuration
kubectl apply -f argocd/crossplane-bootstrap/crossplane-helm-secret.yaml
# Apply the Crossplane custom bootstrap resource
kubectl apply -f argocd/crossplane-bootstrap.yaml
