output "vpc_id" {
  description = "ID của VPC được tạo"
  value       = aws_vpc.main.id
}

output "igw_id" {
  description = "ID của Internet Gateway được tạo"
  value       = aws_internet_gateway.main.id
}

output "public_subnet_ids" {
  description = "IDs của public subnets được tạo"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs của private subnets được tạo"
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ids" {
  description = "IDs của NAT Gateway được tạo"
  value       = aws_nat_gateway.main[*].id
}

output "nat_gateway_ips" {
  description = "Public IPs của NAT Gateway"
  value       = aws_eip.nat[*].public_ip
} 