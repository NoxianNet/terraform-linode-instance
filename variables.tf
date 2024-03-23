variable "location" {
  description = "This is the location where the Linode is deployed.\n"
  default     = "us-east"
  type        = string
}

variable "os_image" {
  description = "image id to deploy"
  type        = string
}

variable "machine_type" {
  description = "the type of machine to provision for the linode instance"
  default     = "g6-standard-1"
  type        = string
}

variable "volume_disk_size" {
  description = "the size to assign the linode disk volume in MB"
  type        = number
}

variable "name" {
  description = "name to give the machine"
  type        = string
}

variable "id_in_name" {
  description = "whether to include the id in the name"
  type        = bool
  default     = true
}

variable "additional_tags" {
  type        = map(string)
  description = "tags to add to the to the linode instance"
  default     = {}
}

variable "root_password" {
  description = "Set a root password for the linode otherwise it will random"
  default     = ""
}

variable "public_ssh_key" {
  description = "The public ssh key to add to the linode\nIf none added a random key will be generated"
  default     = []
}

variable "boot_disk_size" {
  description = "The size of the boot disk in MB"
  default     = 15000
}