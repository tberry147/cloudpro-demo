
variable "cidr_block" {
  description = "The CIDR of the VPC"
  type = string
  default = "10.0.0.0/16"
}
variable "create_vpc" {
  type = bool
  default = true
  
}