resource "tls_private_key" "ssh" {
  count     = var.public_ssh_key == "" ? 1 : []
  algorithm = "RSA"
  rsa_bits  = "2048"
}