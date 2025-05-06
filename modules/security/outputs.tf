output "public_ec2_sg_id" {
  description = "ID của Security Group cho EC2 public"
  value       = aws_security_group.public_ec2.id
}

output "private_ec2_sg_id" {
  description = "ID của Security Group cho EC2 private"
  value       = aws_security_group.private_ec2.id
} 