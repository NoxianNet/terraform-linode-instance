output "deployment_id" {
  value = local.deployment_id
  description = "The deployment ID of the linode instance given by this module"
}

output "instance_id" {
  value = linode_instance.instance.id
  description = "The ID of the Linode instance"
}

output "password" {
  value = var.root_password != "" ? var.root_password : random_password.root_password.result
  sensitive = true
  description = "The root password"
}

output "private_ssh_key" {
  value = tls_private_key.ssh.private_key_pem
  sensitive = true
  description = "the private ssh key"
}

output "public_ip" {
  value = linode_instance.instance.ip_address
  description = "The public ip address of the linode instance"
}

output "private_ip" {
  value = linode_instance.instance.private_ip_address
  description = "The private ip address of the linode instance"
}
