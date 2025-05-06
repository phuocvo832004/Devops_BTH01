output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "public_ec2_sg_id" {
  value = module.security.public_ec2_sg_id
}

output "private_ec2_sg_id" {
  value = module.security.private_ec2_sg_id
}

output "public_instance_ips" {
  value = module.compute.public_instance_ips
}

output "nat_gateway_ips" {
  value = module.vpc.nat_gateway_ips
}

output "public_route_table_id" {
  value = module.networking.public_route_table_id
}

output "private_route_table_ids" {
  value = module.networking.private_route_table_ids
} 