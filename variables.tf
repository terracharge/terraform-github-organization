variable "all_members_team_name" {
  description = "The name of the team that contains all members of the organization."
  type        = string
}
variable "all_members_team_visibility" {
  description = "The level of privacy for the team. Must be one of 'secret' or 'closed'."
  type        = string
}
variable "catch_non_existing_members" {
  description = "Validates if the list of GitHub users are existing users on every run. Use carefully as it will trigger one additional API call for every given user on every iteration. Default is 'false'"
  type        = bool
}
variable "blocked_users" {
  description = "A list of usernames to be blocked from a GitHub organization."
  type        = set(string)
}
variable "members" {
  type        = set(string)
  description = "A list of users to be added to your organization with member role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed."
}
variable "admins" {
  type        = set(string)
  description = "A list of users to be added to your organization with admin role. When applied, an invitation will be sent to the user to become part of the organization. When destroyed, either the invitation will be cancelled or the user will be removed."
}
variable "projects" {
  type        = map(string)
  description = "Create and manage projects for the GitHub organization."
}
variable "secrets" {
  type        = map(string)
  description = "Create and manage secrets for the GitHub organization."
}
