resource "linode_instance" "this" {
  label      = local.name
  tags       = local.tags
  region     = var.location
  type       = var.machine_type
  private_ip = true
  group      = local.deployment_id
}

resource "linode_volume" "this_volume" {
  label  = "disk-${local.deployment_id}"
  region = var.location
  size   = var.disk_size
}

resource "linode_instance_disk" "this_boot_disk" {
  label     = "boot-disk-${local.deployment_id}"
  linode_id = linode_instance.this.id

  size  = 15000 # in MB
  image = var.os_image

  authorized_keys = [chomp(tls_private_key.ssh.public_key_openssh)]
  root_pass       = var.root_password != "" ? var.root_password : random_password.root_password.result

}

resource "linode_instance_config" "instance_boot_config" {
  label     = "boot-config-${local.deployment_id}"
  linode_id = linode_instance.this.id

  device {
    device_name = "sda"
    disk_id     = linode_instance_disk.this_boot_disk.id
  }

  device {
    device_name = "sdb"
    volume_id   = linode_volume.this_volume.id
  }

  root_device = "/dev/sda"
  kernel      = "linode/latest-64bit"
  booted      = true
}
