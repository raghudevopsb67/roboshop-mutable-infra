module "vpc" {
  source         = "./vendor/modules/vpc"
  vpc            = var.vpc
  env            = var.env
  management_vpc = var.management_vpc
}

//module "docdb" {
//  source         = "./vendor/modules/docdb"
//  docdb            = var.docdb
//  env            = var.env
//}

output "merged" {
  value = merge(module.vpc.private_subnets.subnets)
}
