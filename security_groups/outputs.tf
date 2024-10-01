output "bastion_sg_id" {
  value       = aws_security_group.bastion_sg.id
  description = "The ID of the Bastion security group"
}

output "app_sg_id" {
  value       = aws_security_group.app_sg.id
  description = "The ID of the Application security group"
}
