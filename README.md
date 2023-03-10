# dotfiles

Currently only supports macOSx. 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.3.0 |
| <a name="requirement_shell"></a> [shell](#requirement\_shell) | 1.7.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.3.0 |
| <a name="provider_shell"></a> [shell](#provider\_shell) | 1.7.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.fzf_zsh](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.gitconfig](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.gitignore_global](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.mtmr](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.ssh_config](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.starship](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.zsh_aliases](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [local_file.zshenv](https://registry.terraform.io/providers/hashicorp/local/2.3.0/docs/resources/file) | resource |
| [shell_script.brew_package](https://registry.terraform.io/providers/scottwinkler/shell/1.7.10/docs/resources/script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->