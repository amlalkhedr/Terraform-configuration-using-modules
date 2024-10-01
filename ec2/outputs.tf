output "bastion_instance_id" {
  value       = aws_instance.bastion.id
  description = "The ID of the Bastion host instance"
}

output "app_instance_id" {
  value       = aws_instance.app.id
  description = "The ID of the Application host instance"
}
