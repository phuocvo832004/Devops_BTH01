variable "ami_id" {
  description = "AMI ID cho EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Loại EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "public_subnet_ids" {
  description = "IDs của public subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "IDs của private subnets"
  type        = list(string)
}

variable "public_sg_id" {
  description = "ID của security group cho public instances"
  type        = string
}

variable "private_sg_id" {
  description = "ID của security group cho private instances"
  type        = string
}

variable "key_name" {
  description = "Tên của SSH key pair"
  type        = string
  default     = "keypair01"
}

variable "project" {
  description = "Tên project"
  type        = string
}

variable "environment" {
  description = "Môi trường (dev/staging/prod)"
  type        = string
} 