#!/bin/bash

# Check if Helm CLI is installed
if ! command -v helm &> /dev/null; then
    echo "Helm CLI not found. Installing Helm..."
    # Install Helm
    curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
fi

# Install Crossplane Helm chart
echo "Installing Crossplane Helm chart..."
helm repo add crossplane-stable https://charts.crossplane.io/stable
# helm install crossplane crossplane-stable/crossplane --namespace crossplane-system --create-namespace