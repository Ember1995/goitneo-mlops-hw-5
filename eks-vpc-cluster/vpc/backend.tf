terraform {
  backend "s3" {
    bucket  = "mlops-tfstate-hanna"
    key     = "vpc/terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
    profile = "hannadunska"
  }
}

