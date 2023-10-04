# Capstone Project - Khoa Toan Cao
In general, The target is just to complete this assignment because doing so will demonstrate the achievement of my Nanodegree in Cloud DevOps Engineer.

# Project information 
The instructions for the capstone project are a little more flexible than they were for the program's earlier assignments. In this capstone, you will also have some freedom to decide how you will distribute your software, which services you will use, and what kind of application you will create.

For microservices apps, I'll create a CI/CD pipeline with either rolling deployment or blue/green deployment. You may modify my Continuous Integration procedures anyway you see fit, but they must at least contain typographical checking (commonly known as "linting"). I might also decide to integrate additional checks, like security scanning, performance testing, integration testing, etc., to make my project stand out.

# Technology
This includes some technologies as:
+ AWS Cloudformation
+ AWS EKS
+ Docker
+ CircleCI 

## What did I learn?
I will put the information and abilities I gained from the Cloud DevOps Nanodegree program to use in this endeavor including:
+ Working in AWS and then make some usages with Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
+ Building pipelines and work with Ansible and CloudFormation to deploy clusters
+ Building Kubernetes clusters and then build Docker containers in pipelines


# Application configurations

My program is a straightforward "Hello World" program. In order to deploy my program, I followed the steps below.

PART 1 - Infrastructure is created using CloudFormation. This infrastructure is only built once.
    + VPC, one public subnet, two private subnets, and an internet gateway are all included in the network infrastructure (InfrastructureCreation/Network.yml).

    + aws cloudformation create-stack  --stack-name FinalCapstoneProjectConfiguration --region us-east-1 --template-body file://Network.yml  --parameters file://Network-parameters.json

    + 1 EKS cluster and 1 bastion host for testing and managing my EKS cluster are included in the servers infrastructure (InfrastructureCreation/Servers.yml).

    + aws cloudformation create-stack  --stack-name CapstoneServers --region us-east-1 --template-body file://Servers.yml  --parameters file://Servers-parameters.json --capabilities CAPABILITY_NAMED_IAM

PART 2 - CircleCI CI/CD will deploy my application automatically using the following process if any modifications are made including:
    + code linting
    + docker code building
    + docker code uploading to docker hub
    + deploy new image from docker hub to the EKS cluster

# Final Output
    + Build the project successfully in the beginning. 
    + Ater that, setup the active application can then be verified using my cluster endpoint.

URL : http://aa739d19d2bdd4968a7df7f57bc037c1-1482864363.us-east-1.elb.amazonaws.com/
Link to github
https://github.com/khoatcao/Capstone-project

