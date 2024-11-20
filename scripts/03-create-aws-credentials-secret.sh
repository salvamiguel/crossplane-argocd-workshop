#!/bin/bash

# Create AWS credentials file
if [ ! -f "aws-creds.conf" ]; then
    echo "Creating AWS credentials file"
    touch aws-creds.conf
    printf "[default]\naws_access_key_id = <PASTE HERE YOUR ACCESS KEY ID>\naws_secret_access_key = <PASTE HERE YOU SECRET ACCESS KEY>\n" > ./aws-creds.conf
    echo "Fill AWS credentials and re-run the script"
else
    kubectl create namespace crossplane-system
    echo "AWS credentials file already exists"
    kubectl create secret generic aws-creds -n crossplane-system --from-file=creds=aws-creds.conf
fi