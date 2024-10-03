#--- instance/variables.tf ---#

variable "instance_type" {
  type        = string
  description = "Instace Type"
}

variable "subnet_id" {
  type        = string
  description = "Subnet Id"
}

variable "instance_count" {
  type        = number
  description = "Instance Count"
}