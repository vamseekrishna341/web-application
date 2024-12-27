#!/bin/bash

# Define S3 bucket for frontend deployment
S3_BUCKET="my-frontend-bucket"

# Sync the React build directory to S3
echo "Deploying frontend to S3"
aws s3 sync ./frontend/build/ s3://$S3_BUCKET/ --delete

# In case of EC2 deployment, you could use scp or rsync
# Example: rsync -avz ./frontend/build/ user@ec2-instance:/var/www/html
