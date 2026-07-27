resource "local_file" "ansible_inventory" {

filename = "../ansible/inventory.ini"


content = <<EOF

[web]

${aws_instance.account1.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=${path.root}/terraform-generated-key.pem

EOF
}
