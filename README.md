# assignment-ecs
Deployment to AWS ECS using Terraform and GitHub Actions
This repository contains an example to automate the deployment of sample python app to Amazon ECS using Terraform and GitHub Actions

# Prerequisites
An AWS account with permission to create and manage resources in Amazon ECS.

Docker installed on your local machine.

Terraform installed on your local machine.

# Below are the tools/services used in this assessment 
GitHub: This is where source code resides. We used GitHub Actions to build and push the Docker image to Amazon ECR.

AWS ECR: This is where you'll store the Docker image that will be deployed to ECS.

AWS ECS: This is where you'll deploy your Docker container. ECS is a fully managed container orchestration service that allows you to run and scale Docker containers on a cluster of EC2 instances.

AWS IAM: This is used to create roles and provide permissions to AWS services via containers

The flow of events is as follows:

Created a GitHub Actions workflow that will build your Docker image and push it to Amazon ECR.

This repository contains a GitHub Actions workflow that automates the deployment of the Docker container to Amazon ECS using Terraform. The workflow has two jobs:
- build: This job builds the Docker image and pushes it to Amazon ECR.
- deploy: This job deploys the Docker container to ECS using Terraform.

The Docker image will be pushed to Amazon ECR.

Finally, the Terraform script will deploy the Docker container to the ECS cluster running on the EC2 instance.
