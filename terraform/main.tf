##########################################
# EC2 - ACCOUNT 1
##########################################

resource "aws_instance" "account1" {

  provider = aws.account1

  ami = data.aws_ami.ubuntu.id

  key_name = aws_key_pair.generated_key.key_name

  instance_type = var.instance_type

  root_block_device {

    volume_size = var.disk_size

    volume_type = "gp3"

  }

  tags = {

    Name = "DEV-ACCOUNT1"

    Environment = "Desenvolvimento"

  }

}