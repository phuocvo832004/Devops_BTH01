variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "igw_id" {
  description = "ID của Internet Gateway"
  type        = string
}

variable "public_subnet_ids" {
  description = "IDs của Public Subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "IDs của Private Subnets"
  type        = list(string)
}

variable "nat_gateway_ids" {
  description = "IDs của NAT Gateways"
  type        = list(string)
}

variable "project" {
  description = "Tên project"
  type        = string
}

variable "environment" {
  description = "Môi trường (dev/staging/prod)"
  type        = string
} 