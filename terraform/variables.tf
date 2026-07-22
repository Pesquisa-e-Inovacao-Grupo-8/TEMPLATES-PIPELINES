# Criando variáveis das chaves para acessar os IDs na AWS 

variable "account1_access_key" {
  type      = string
  sensitive = true
}

variable "account1_secret_key" {
  type      = string
  sensitive = true
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "disk_size" {
  description = "Tamanho do disco da EC2"
  type        = number
  default     = 8
}

variable "disk_type" {
  description = "Tipo do volume EBS"
  type        = string
  default     = "gp3"
}

variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}