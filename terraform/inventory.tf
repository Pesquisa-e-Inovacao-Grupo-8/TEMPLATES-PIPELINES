resource "local_file" "ansible_inventory" {

filename = "../ansible/inventory.ini"


content = <<EOF

[servers]

${aws_instance.account1.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=../terraform-generated-key.pem

EOF
}