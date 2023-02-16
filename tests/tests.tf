terraform {
  required_providers {
    linode {
      source = "linode/linode"
      version = ">= 1.30.0"
    }
  }
}

provider "linode" {
  token = ""
}

module "test_instance" {
  source = "../"
  name_addition = "linode_test"
}