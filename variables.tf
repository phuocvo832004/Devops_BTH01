variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "fourj"
}

variable "environment" {
  description = "Environment (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "app_ami_id" {
  description = "AMI ID for the application EC2 instances (Amazon Linux 2)"
  type        = string
  default     = "ami-0df7a207adb96980a"
}

variable "instance_type" {
  description = "Loại EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Tên của SSH key pair"
  type        = string
  default     = "keypair01"
}

variable "allowed_ssh_ip" {
  description = "Địa chỉ IP được phép kết nối SSH (CIDR format, VD: 1.2.3.4/32)"
  type        = string
  default     = "113.185.72.73/32"
} 