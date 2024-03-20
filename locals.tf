locals {
  deployment_id = random_string.suffix.result
  default_tags  = [for k, v in local.labels : "${k}: ${v}"]
  tags          = var.additional_tags == "" ? local.default_tags : concat([for k, v in var.additional_tags : "${k}: ${v}"], local.default_tags)
  labels = {
    terraform     = "true"
    deployment_id = local.deployment_id
    instance_name = var.id_in_name ? "${var.name}-${local.deployment_id}" : var.name
    location      = var.location
    machine_type  = var.machine_type
  }
}
