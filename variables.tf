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

variable "disk_size" {
  description = "the size to assign the linode disk volume in MB"
  type        = number
}

variable "name_addition" {
  description = "name to give the machine"
  type        = string
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
