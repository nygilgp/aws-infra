#--- instance/outputs.tf ---#

output "instance_id" {
  description = "ID of instance"
  value       = aws_instance.app_server[*].id
}