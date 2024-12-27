#!/bin/bash

# Stop the existing application (if running)
echo "Stopping existing backend application"
sudo systemctl stop backend

# Sync the backend code to the EC2 instance
echo "Deploying new backend code"
aws deploy push --application-name backend-app --s3-location s3://my-deployment-bucket/backend.zip

# Create a new CodeDeploy deployment
echo "Creating a new deployment"
aws deploy create-deployment --application-name backend-app --deployment-group-name backend-deployment-group --s3-location bucket=my-deployment-bucket,key=backend.zip,bundleType=zip,eTag=$(aws s3api head-object --bucket my-deployment-bucket --key backend.zip --query ETag --output text)

# Start the backend application
echo "Starting backend application"
sudo systemctl start backend
