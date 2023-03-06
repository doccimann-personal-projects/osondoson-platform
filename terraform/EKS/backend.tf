terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "osondoson"

    workspaces {
      name = "eks"
    }
  }
}