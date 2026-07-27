resource "tls_private_key" "ssh" {

  algorithm = "RSA"

  rsa_bits = 4096

}


resource "aws_key_pair" "generated_key" {

  key_name = "terraform-generated-key"

  public_key = tls_private_key.ssh.public_key_openssh

}


resource "local_file" "private_key" {

  content = tls_private_key.ssh.private_key_pem

  filename = "./terraform-generated-key.pem"

}