output "public_instance_ids" {
  description = "IDs của các public EC2 instances"
  value       = aws_instance.public[*].id
}

output "private_instance_ids" {
  description = "IDs của các private EC2 instances"
  value       = aws_instance.private[*].id
}

output "public_instance_ips" {
  description = "Public IPs của các public EC2 instances"
  value       = aws_instance.public[*].public_ip
} 