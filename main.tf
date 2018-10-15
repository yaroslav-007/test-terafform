# token variable
variable "github_token" {
  description = "github token"
}

# repo
variable "repo" {
  description = "repo"
  default     = "repo-name"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "bsp-007"
}

resource "github_repository" "example" {
  name        = "${var.repo}"
  description = "My awesome codebase"
}
