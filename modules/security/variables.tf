variable "vpc_id" {
  description = "ID của VPC"
  type        = string
}

variable "project" {
  description = "Tên project"
  type        = string
}

variable "environment" {
  description = "Môi trường (dev/staging/prod)"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "Địa chỉ IP được phép kết nối SSH (CIDR format, VD: 1.2.3.4/32)"
  type        = string
  default     = "113.185.72.73/32" 
} 