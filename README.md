<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.8 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | >= 1.30.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | >= 1.30.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_instance.instance](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance) | resource |
| [linode_instance_config.instace_boot_config](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance_config) | resource |
| [linode_instance_disk.instance_boot_disk](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance_disk) | resource |
| [linode_volume.instance_volume](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/volume) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | This is the location where the Linode is deployed. | `string` | `"us-east"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | the type of machine to provision for the linode instance | `string` | `"g6-standard-1"` | no |
| <a name="input_name_addition"></a> [name\_addition](#input\_name\_addition) | name to give the machine | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->