#--- vpc/variables.tf ---#

variable "az" {
  type        = string
  description = "Availability Zone"
}
variable "vpc_cidr_block" {
  type        = string
  description = "VPC Cidr Block"
}
variable "subnet_cidr_block" {
  type        = string
  description = "Subnet Cidr Block"
}