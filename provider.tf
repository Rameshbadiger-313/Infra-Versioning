terraform {
  required_version = ">= 1.7.0"

  backend "s3" {
    bucket         = "infra-versioning-stateful-bucket50"
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = "terraform-locks23"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
