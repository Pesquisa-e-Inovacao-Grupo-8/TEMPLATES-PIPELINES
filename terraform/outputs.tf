output "ec2_public_ip" {
  value = aws_instance.account1.public_ip
}

output "private_key_pem" {
  value       = tls_private_key.ssh.private_key_pem
  sensitive   = true 
  description = "Conteúdo da chave privada PEM"
}