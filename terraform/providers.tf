# Identificando as contas para a criação de ambientes

provider "aws" {
  alias      = "account1"
  region     = "us-east-1"

# access_key = var.account1_access_key
# secret_key = var.account1_secret_key
}