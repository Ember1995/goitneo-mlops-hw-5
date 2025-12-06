terraform {
  backend "s3" {
    bucket  = "mlops-tfstate-hanna"
    key     = "root/terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
    profile = "hannadunska"
  }
}
