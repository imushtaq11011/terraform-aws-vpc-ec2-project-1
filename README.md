<h2>Project: AWS Infrastructure Automation using Terraform<h2>
  
   <b>Overview<b>

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS cloud resources in an automated and reusable way.
The goal is to build a production-style AWS environment instead of creating resources manually from the AWS Console.

<b> Architecture Components<b>

The following AWS resources are created using Terraform:
VPC (Custom Virtual Private Cloud)
Public Subnet
Internet Gateway (IGW)
Route Table & Associations
Security Group
EC2 Instance
Key Pair
User Data Script (for server configuration)

⚙️ <b>Tools & Technologies Used<b>

AWS
Terraform
Git & GitHub
Linux (Ubuntu / WSL)
VS Code
---
## 📂 Project Structure
├── main.tf
├── variables.tf
├── terraform.tfvars
├── README.md
└── modules
    ├── vpc
    ├── subnet
    ├── igw
    ├── security_group
    └── ec2
---
<b> What This Project Demonstrates<b>

Modular Terraform design
Reusable Terraform modules
Clean variable management
Secure EC2 access using key pairs
Automated EC2 configuration using user_data
Real-world cloud engineering workflow
GitHub version control best practices

<b> EC2 User Data Functionality<b>
The EC2 instance is automatically configured at launch using a user data script, which:
Installs required packages
Starts services automatically
Prepares the server without manual login

📸 <b>Screenshots<b>


✅ terraform plan output

✅ terraform apply success output

✅ AWS VPC dashboard

✅ EC2 instance running

✅ Folder structure in VS Code

✅ AWS Subnet Dashboard

✅ AWS Internet Gateway Dashboard


▶ <b>How to Run This Project<b>
terraform init
terraform validate
terraform plan
terraform apply


<b>To destroy infrastructure:<b>

terraform destroy

 <b>Learning Outcomes<b>

Practical Terraform experience
Real AWS infrastructure design
Hands-on cloud engineering skills
Industry-aligned IaC workflow


 <b>Next Improvements<b>

Add Application Load Balancer
Enable Auto Scaling Group
Integrate CloudWatch Monitoring
CI/CD using Jenkins

👤 <b>Author<b>

MUSHTAQ KHAN
AWS Cloud Engineer
Terraform | AWS | IaC | Cloud Automation
