#!/bin/bash

kubectl apply -f argocd/install/argocd-namespace.yaml
# Install ArgoCD service
kubectl apply -k argocd/install
# Wait util the Argo service is fully available
echo "Waiting ArgoCD to be ready"
kubectl wait --for=condition=ready pod -l app.kubernetes.io/name=argocd-server --namespace argocd --timeout=300s
# Apply the ArgoCD custom configuration
kubectl apply -f argocd/install/argocd-cmd-params-cm.yaml
# Get the password for admin user
echo "ArgoCD admin password:"
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
# Port fordward to 
kubectl port-forward -n argocd --address='0.0.0.0' service/argocd-server 8080:80
