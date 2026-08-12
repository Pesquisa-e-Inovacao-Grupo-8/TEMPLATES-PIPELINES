terraform {
  backend "s3" {
    bucket = "terraform-state-isabelle"
    key    = "projeto-terraform/terraform.tfstate"
    region = "us-east-2"
  }
}