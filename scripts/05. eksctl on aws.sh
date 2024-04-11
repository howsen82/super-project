#!/bin/bash
## On Jenkins Server, execute the command
aws eks update-kubeconfig --region us-east-1 --name super-project

## Login sonarqube using admin/admin, change password respectively

## Go to AWS EKS, Go to `Compute` -> `Node Group` -> `Add Node Group`
# Name: worker-1
# Node IAM role: AmazonEKSNodeRole
# 
# Choose 'Next'
## If AWS Node Role does not exists
# 1. Go to https://console.aws.amazon.com/iam/
# 2. Select `Roles` menu
# 3. On the `Roles` page, choose `Create role`
# 4. On the `Select trusted entity page`, do the following
#    a. In the `Trusted entity type` section, choose `AWS service`.
#    b. Under `Use case`, choose `EC2`.
#    c. Choose `Next`.
# 5. Using role name: `AmazonEKSNodeRole`
## Refer to https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html#create-worker-node-role
#
# Under 'Node group scaling configuration'
# Desired size: 1 nodes
# Minimum size: 1 nodes
# Maximum size: 2 nodes
#
# Click 'Next'
#
# Enable 'Configure remote access to nodes'
# Key pair: devops
# Security groups: default
# Click 'Next'
#
# Finally click 'Create'