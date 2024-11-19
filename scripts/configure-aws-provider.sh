#Create ProviderConfig
kubectl apply -f ../aws-providers/provider-conf.yaml
# Install Crossplane AWS providers
kubectl apply -f aws-providers/ec2.yaml
kubectl apply -f aws-providers/s3.yaml