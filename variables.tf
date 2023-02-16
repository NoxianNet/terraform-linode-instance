variable "location" {
  description = "This is the location where the Linode is deployed.\n"
  default = "us-east"
  type = string
}

variable "machine_type" {
  description = "the type of machine to provision for the linode instance"
  default = "g6-standard-1"
  type = string
}

variable "name_addition" {
  description = "name to give the machine"
  type = string
}

locals {
  deployment_id = random_string.suffix.result
  name_addition = var.name_addition == "" ? "" : var.name_addition
  name = "${local.name_addition}-${var.location}-${local.deployment_id}"
  labels = {
    terraform     = "true"
    deployment_id = local.deployment_id
    instance_name = local.name
    region        = var.location
  }
}