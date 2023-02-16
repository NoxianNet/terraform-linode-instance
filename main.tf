resource "linode_instance" "instance" {
  label = local.name
  tags = [for r in local.labels : r]
  region = var.location
  type = var.machine_type
  private_ip = true
}

resource "linode_volume" "instance_volume" {
  label  = ""
  region = var.location
  size = 20
}

resource "linode_instance_disk" "instance_boot_disk" {
  label = concat("boot-disk-id-",local.deployment_id)
  linode_id = linode_instance.instance.id

  size = "3000"
  image = "linode/ubuntu18.04"

  authorized_keys = [""]
  root_pass = "terr4form-test"
}

resource "linode_instance_config" "instace_boot_config" {
  label = "boot_config"
  linode_id = linode_instance.instance.id

  devices {
    sda {
      disk_id = linode_instance_disk.instance_boot_disk.id
    }
    sdb {
      volume_id = linode_volume.instance_volume.id
    }
  }

  root_device = "/dev/sda"
  kernel = "linode/latest-64bit"
  booted = true
}
