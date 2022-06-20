<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.2.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.26.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_organization_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_membership.membership](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_organization_block.blocked_user](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_block) | resource |
| [github_organization_project.project](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_project) | resource |
| [github_team.all](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.all](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_user.user](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins"></a> [admins](#input\_admins) | A list of users to be added to your organization with admin role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed. | `set(string)` | n/a | yes |
| <a name="input_all_members_team_name"></a> [all\_members\_team\_name](#input\_all\_members\_team\_name) | The name of the team that contains all members of the organization. | `string` | n/a | yes |
| <a name="input_all_members_team_visibility"></a> [all\_members\_team\_visibility](#input\_all\_members\_team\_visibility) | The level of privacy for the team. Must be one of 'secret' or 'closed'. | `string` | n/a | yes |
| <a name="input_blocked_users"></a> [blocked\_users](#input\_blocked\_users) | A list of usernames to be blocked from a GitHub organization. | `set(string)` | n/a | yes |
| <a name="input_catch_non_existing_members"></a> [catch\_non\_existing\_members](#input\_catch\_non\_existing\_members) | Validates if the list of GitHub users are existing users on every run. Use carefully as it will trigger one additional API call for every given user on every iteration. Default is 'false' | `bool` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | A list of users to be added to your organization with member role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed. | `set(string)` | n/a | yes |
| <a name="input_projects"></a> [projects](#input\_projects) | Create and manage projects for the GitHub organization. | `map(string)` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | Create and manage secrets for the GitHub organization. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_members_team"></a> [all\_members\_team](#output\_all\_members\_team) | The outputs of the all members team that contains all members of your organization. |
| <a name="output_blocked_users"></a> [blocked\_users](#output\_blocked\_users) | The list of users that are blocked by the organization. |
| <a name="output_memberships"></a> [memberships](#output\_memberships) | A map of members and admins keyed by username. |
| <a name="output_projects"></a> [projects](#output\_projects) | A map of projects keyed by the id (default: project name). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
