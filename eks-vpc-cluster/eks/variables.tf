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

variable "cluster_name" {
  type        = string
  default     = "goit-eks"
}

variable "cluster_version" {
  type        = string
  default     = "1.31"
}

variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

