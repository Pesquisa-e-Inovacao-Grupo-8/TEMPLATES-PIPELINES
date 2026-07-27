output "ec2_public_ip" {

  value = aws_instance.account1.public_ip

}