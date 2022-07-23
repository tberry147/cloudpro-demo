
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
