

variable "cidr_block" {
  description = "The CIDR of the VPC"
  type = string
  default = "10.0.0.0/16"
}


variable "vpc_cidr" {
  description = "The CIDR of VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  description = "CIDR of private subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "pub_cidr" {
    description = "the cidr_block of public subnet"
    type = string
    default = "10.0.0.0/24"
}