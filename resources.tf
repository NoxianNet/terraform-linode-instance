resource "random_string" "suffix" {
  length  = 6
  numeric = false
  upper   = false
  special = false
}