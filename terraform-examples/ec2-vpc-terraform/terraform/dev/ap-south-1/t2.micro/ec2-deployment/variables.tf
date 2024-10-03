#---root/variables.tf---#

variable "az" {
  type        = string
  description = "Availability Zone"
  default     = "ap-south-1a"
}
variable "vpc_cidr_block" {
  type        = string
  description = "VPC Cidr Block"
  default     = "10.0.0.0/16"
}
variable "subnet_cidr_block" {
  type        = string
  description = "Subnet Cidr Block"
  default     = "10.0.0.0/24"
}