#!/bin/bash

# Create AWS credentials file
if [ ! -f "aws-credentials.txt" ]; then
    touch aws-credentials.txt
    printf "[default]\naws_access_key_id = <PASTE HERE YOUR ACCESS KEY ID>\naws_secret_access_key = <PASTE HERE YOU SECRET ACCESS KEY>\n" > ./aws-credentials.txt
else
    kubectl create secret generic aws-secret -n crossplane-system --from-file=aws-credentials.txt
fi