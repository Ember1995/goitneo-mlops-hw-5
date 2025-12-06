# NOTE (based on mentor's feedback):
# The variable `aws_region` is not needed inside this module.
# It is not used anywhere in the VPC module, and provider configuration
# must come only from the root module.
#
# Terraform automatically passes the root provider to child modules,
# so defining `aws_region` here is unnecessary and technically incorrect.
#
# Therefore, this variable is commented out and can be safely removed.

# variable "aws_region" {
#   type    = string
#   default = "eu-north-1"
# }

variable "vpc_name" {
  type    = string
  default = "mlops-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["eu-north-1a", "eu-north-1b"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.2.0/24", "10.0.4.0/24"]
}

