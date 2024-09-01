# module-hostname
Terraform module to set the hostname and HostID on Linux with Ansible

> [!Warning]
> * This module doesn't have resources with a traditional state.
> * Make sure to set var.external_triggers for any changes that require an update other than variables.
> * This module doesn't delete the changes on the target system on destroy.

# Terraform Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_ansible"></a> [ansible](#requirement\_ansible) | >= 1, < 2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3, < 4 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3, < 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ansible"></a> [ansible](#provider\_ansible) | 1.3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ansible_playbook.hostid](https://registry.terraform.io/providers/ansible/ansible/latest/docs/resources/playbook) | resource |
| [ansible_playbook.hostname](https://registry.terraform.io/providers/ansible/ansible/latest/docs/resources/playbook) | resource |
| [null_resource.hostname](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.run_command](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.variables](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_string.hostid](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostid"></a> [hostid](#input\_hostid) | HostID: 8 digit hex or decimal number. | `string` | `"random"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname of the linux machine | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostid"></a> [hostid](#output\_hostid) | The applied HostID |
| <a name="output_hostname"></a> [hostname](#output\_hostname) | The hostname of the linux machine |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
