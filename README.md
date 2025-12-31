# AWS Infrastructure Automation using Terraform

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS cloud resources in an automated and reusable way.

The goal of this project is to create a production-style AWS environment instead of manually creating resources from the AWS Management Console.

## Architecture Overview

The infrastructure follows a simple AWS architecture:

        +----------------------+
        |        Internet      |
        +----------+-----------+
                   |
                   v
        +----------------------+
        |   Internet Gateway   |
        +----------+-----------+
                   |
                   v
        +----------------------+
        |    Route Table       |
        +----------+-----------+
                   |
                   v
        +----------------------+
        |    Public Subnet     |
        +----------+-----------+
                   |
                   v
        +----------------------+
        |     EC2 Instance     |
        +----------------------+

All resources are deployed inside a custom VPC using Terraform modules.



---

## Architecture Components

The following AWS resources are created using Terraform:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table and Route Associations
- Security Group
- EC2 Instance
- Key Pair
- User Data Script for EC2 configuration

## Tools and Technologies Used

- AWS
- Terraform
- Git and GitHub
- Linux (Ubuntu / WSL)
- Visual Studio Code

## Project Structure

```text
.
├── main.tf
├── variables.tf
├── terraform.tfvars
├── README.md
└── modules
    ├── vpc
    │   └── main.tf
    ├── subnet
    │   └── main.tf
    ├── igw
    │   └── main.tf
    ├── security_group
    │   └── main.tf
    └── ec2
        └── main.tf
```




## What This Project Demonstrates

- Modular Terraform design
- Reusable Terraform modules
- Clean variable management
- Secure EC2 access using key pairs
- Automated EC2 configuration using user data
- Real-world cloud engineering workflow
- GitHub version control best practices

## EC2 User Data Functionality

The EC2 instance is automatically configured at launch using a user data script.

The script performs the following actions:

- Installs required packages
- Starts required services automatically
- Prepares the server without manual login

## Screenshots

The following screenshots are included in the repository:

- Terraform plan output
- Terraform apply successful output
- AWS VPC dashboard
- Running EC2 instance
- Project folder structure in VS Code
- AWS Subnet dashboard
- AWS Internet Gateway dashboard

## How to Run This Project

terraform init  
terraform validate  
terraform plan  
terraform apply  

## Destroy Infrastructure

terraform destroy

## Learning Outcomes

- Practical hands-on experience with Terraform
- Real AWS infrastructure design understanding
- Strong cloud engineering foundation
- Industry-aligned Infrastructure as Code workflow

## Future Improvements

- Add Application Load Balancer
- Enable Auto Scaling Group
- Integrate CloudWatch monitoring
- Implement CI/CD pipeline using Jenkins

## Author

Mushtaq Khan  
AWS Cloud Engineer  
Terraform | AWS | Infrastructure as Code | Cloud Automation
