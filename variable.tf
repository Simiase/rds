variable "vpc_cidr" {
default = "10.0.0.0/16"
description = " VPC CIDR Block"
type = string
}

variable "public_subnet_cidr" {
default = "10.0.0.0/24"
description = "public subnet CIDR Block"
type = string
}

variable "private_subnet_cidr" {
default = "10.0.1.0/24"
description = "private subnet CIDR Block"
type = string
}