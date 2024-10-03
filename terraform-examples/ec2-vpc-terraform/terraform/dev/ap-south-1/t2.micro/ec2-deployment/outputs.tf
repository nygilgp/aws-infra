#---root/outputs.tf---#


output "instance_id" {
  description = "ID of instance"
  value       = module.instance.instance_id[*]
}