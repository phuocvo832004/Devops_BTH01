output "public_route_table_id" {
  description = "ID của route table cho public subnet"
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "IDs của route table cho private subnet"
  value       = aws_route_table.private[*].id
} 