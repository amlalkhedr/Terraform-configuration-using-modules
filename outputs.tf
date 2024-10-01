output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "bastion_instance_id" {
  value = module.ec2.bastion_instance_id
}

output "app_instance_id" {
  value = module.ec2.app_instance_id
}

output "bastion_sg_id" {
  value = module.security_groups.bastion_sg_id
}

output "app_sg_id" {
  value = module.security_groups.app_sg_id
}
