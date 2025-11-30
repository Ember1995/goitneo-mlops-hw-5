terraform {
  backend "s3" {
    bucket  = "mlops-tfstate-hanna"
    key     = "eks/terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
    profile = "hannadunska"
  }
}

