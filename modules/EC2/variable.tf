variable "ami" {
  description = "AMI for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where instance will be created"
  type        = string
}

variable "security_group_ids" {
  description = "List of SG IDs"
  type        = list(string)
}


variable "instance_name" {
  description = "Tag Name for EC2"
  type        = string
}

variable "key_name" {
  description = "key pair name"
  type = string
  
}

variable "user_data" {
    description = "user data scrip"
    type = string
    default = ""
  
}