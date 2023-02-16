output "deployment_id" {
  value = local.deployment_id
}

output "instance_id" {
  value = linode_instance.instance.id
}

output "password" {
  value = var.root_password != "" ? var.root_password : random_password.root_password.result
  sensitive = true
}

output "private_ssh_key" {
  value = tls_private_key.ssh.private_key_pem
  sensitive = true
}