resource "random_string" "suffix" {
  length  = 8
  numeric = true
  upper   = false
  special = false
}

resource "random_password" "root_password" {
  length = 32
  special = true
  min_lower = 4
  min_special = 2
  min_numeric = 4
  min_upper = 4
}