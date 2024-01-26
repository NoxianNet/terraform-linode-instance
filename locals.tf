locals {
  deployment_id = random_string.suffix.result
  name          = var.name == "" ? local.deployment_id : "${var.name}-${local.deployment_id}"
  default_tags  = [for k, v in local.labels : "${k}: ${v}"]
  tags          = var.additional_tags == "" ? local.default_tags : concat([for k, v in var.additional_tags : "${k}: ${v}"], local.default_tags)
  labels = {
    terraform     = "true"
    deployment_id = local.deployment_id
    instance_name = local.name
    location      = var.location
    machine_type  = var.machine_type
  }
}
