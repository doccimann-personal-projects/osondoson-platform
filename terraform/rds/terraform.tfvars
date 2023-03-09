backend_organization = "osondoson"
vpc_workspace        = "vpc"

db_name              = "osondoson"
db_username          = "brian"
db_password          = "osondoson"
db_instance_class    = "db.t3.micro"
db_allocated_storage = 20
engine               = "postgres"
engine_version       = "14.6"

parameter_group_name   = "osondoson-parameter-group"
parameter_group_family = "postgres14"