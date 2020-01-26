
provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
  profile = "Infra"
}

terraform {
  backend "s3" {
    bucket = "terraform-iac-l"
    key    = "terraformt.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
