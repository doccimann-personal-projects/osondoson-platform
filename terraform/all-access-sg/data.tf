data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "osondoson"
    workspaces = {
      name = "vpc"
    }
  }
}