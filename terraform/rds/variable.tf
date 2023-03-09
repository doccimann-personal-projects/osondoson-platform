variable "backend_organization" {
  type        = string
  description = "terraform backend organization (app.terraform.io)"
}

variable "vpc_workspace" {
  type        = string
  description = "workspace for VPC (app.terraform.io)"
}

variable "db_name" {
  type        = string
  description = "DB name"
}

variable "db_username" {
  type        = string
  description = "username for db"
}

variable "db_password" {
  type        = string
  description = "password for db"
}

variable "db_instance_class" {
  type        = string
  default     = "t2.micro"
  description = "db instance class for db"
}

variable "db_allocated_storage" {
  type        = number
  default     = 20
  description = "allocated storage for db. default value is 20Gi"
}

variable "engine" {
  type        = string
  description = "db engine"
}

variable "engine_version" {
  type        = string
  description = "db engine version"
}

variable "parameter_group_name" {
  type        = string
  description = "parameter group name for this rds"
}

variable "parameter_group_family" {
  type        = string
  description = "parameter group family for this rds"
}