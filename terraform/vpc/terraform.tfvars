vpc_name = "osondoson-vpc"

vpc_cidr_block = "10.0.0.0/16"

public_subnets = {
  osondoson_subnet_public__az1 = {
    cidr_block           = "10.0.0.0/24"
    availability_zone_id = "apne2-az1"
  }
  osondoson_subnet_public__az3 = {
    cidr_block           = "10.0.1.0/24"
    availability_zone_id = "apne2-az3"
  }
}

private_subnets = {
  osondoson_subnet_private__az1 = {
    cidr_block           = "10.0.10.0/24"
    availability_zone_id = "apne2-az1"
  }
  osondoson_subnet_private__az3 = {
    cidr_block           = "10.0.11.0/24"
    availability_zone_id = "apne2-az3"
  }
}

nacl_egress_rules_public = {
  100 = {
    action     = "allow"
    protocol   = "all"
    from_port  = 0
    to_port    = 65535
    cidr_block = "0.0.0.0/0"
  }
}

nacl_ingress_rules_public = {
  100 = {
    action     = "allow"
    protocol   = "all"
    from_port  = 0
    to_port    = 65535
    cidr_block = "0.0.0.0/0"
  }
}

nacl_egress_rules_private = {
  100 = {
    action     = "allow"
    protocol   = "all"
    from_port  = 0
    to_port    = 65535
    cidr_block = "0.0.0.0/0"
  }
}

nacl_ingress_rules_private = {
  100 = {
    action     = "allow"
    protocol   = "all"
    from_port  = 0
    to_port    = 65535
    cidr_block = "10.0.0.0/16"
  }
}
