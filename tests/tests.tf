terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "~> 2.0"
    }
  }
}

module "test_instance" {
  source = "../"
  name = "linode_test"
  disk_size = 3000
  os_image = "linode/centos-stream9"
  additional_tags = {
    test_linode = "true"
  }
}

output "root_password" {
  value = module.test_instance.password
  sensitive = true
}

output "deployment_id" {
  value = module.test_instance.deployment_id
}

output "linode_id" {
  value = module.test_instance.instance_id
}

output "ssh_key" {
  value = module.test_instance.private_ssh_key
  sensitive = true
}