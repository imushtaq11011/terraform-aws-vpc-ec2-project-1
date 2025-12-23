provider "aws" {
    region = "ap-south-1"
  
}



module "vpc" {
  source = "./modules/vpc"
 
 vpc_cidr_block = var.vpc_cidr_block
 vpc_name = var.vpc_name
  
}

  module "subnet" {
 source = "./modules/subnets"

  vpc_id = module.vpc.vpc_id

  cidr_block = var.cidr_block
 availability_zone = var.availability_zone
 name = var.subnet_name
  }



 module "internet_gateway" {
     source = "./modules/internet gateway"
    vpc_id = module.vpc.vpc_id
     name = var.igw_name
 }


 module "sg" {
     source = "./modules/sg"
 vpc_id = module.vpc.vpc_id
 sg_description = var.sg_description
 ingress_rules = var.ingress_rules
 sg_name = var.sg_name

 }


 module "EC2" {
     source = "./modules/EC2"

  ami = var.ami
  instance_type = var.instance_type
  subnet_id = module.subnet.subnet_id
  security_group_ids = [module.sg.sg_id]
  instance_name = var.instance_name
  key_name = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to Terraform EC2 Instance!</h1>" > /var/www/html/index.html
              EOF
 }
