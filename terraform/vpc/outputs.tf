output "vpc_id" {
  value = module.vpc.id
}

output "cidr_block" {
  value = module.vpc.cidr_block
}

output "subnet_groups" {
  value = {
    public  = module.subnet_group__public.ids
    private = module.subnet_group__private.ids
  }
}