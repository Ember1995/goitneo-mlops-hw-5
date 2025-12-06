# NOTE (per mentor's feedback):
# The provider configuration must NOT be defined inside child modules.
# Providers should only be configured in the root module, and then inherited
# by all submodules automatically.
#
# Keeping provider blocks here would break Terraform best practices and
# create separate, isolated Terraform configurations.
#
# Therefore, this block is intentionally commented out.

# terraform {
#   required_version = ">= 1.5.0"
#
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = ">= 5.0, < 6.0"
#     }
#   }
# }
#
# provider "aws" {
#   region  = var.aws_region
#   profile = "hannadunska"
#
#   default_tags {
#     tags = {
#       Project   = "mlops-course"
#       ManagedBy = "terraform"
#     }
#   }
# }
