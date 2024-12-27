# My Web Application

This project is a full-stack web application that includes both a frontend React app and a backend Node.js API.

## Setup

### Backend
The backend is a Node.js application using Express. It is deployed to an EC2 instance using AWS CodeDeploy.

### Frontend
The frontend is built using React. It is deployed to an S3 bucket or EC2 instance.

## Deployment

The CI/CD pipeline is set up using GitHub Actions. When code is pushed to the `main` branch, the pipeline will:
1. Build both frontend and backend.
2. Deploy the backend to EC2 using CodeDeploy.
3. Deploy the frontend to an S3 bucket (or EC2 if specified).

### Prerequisites
- AWS account with EC2, CodeDeploy, and S3 configured
- AWS CLI and GitHub secrets set up
