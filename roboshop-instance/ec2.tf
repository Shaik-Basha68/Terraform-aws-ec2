module "catalogue" {
  source = "../."
    ami_id                 = var.ami_id
    instance_type          = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids
    tags                   = var.tags
}

output "public_ip" {
  value = module.catalogue.public_ip
}
output "instance_id" {
  value = module.catalogue.instance_id
}
output "private_ip" {
  value = module.catalogue.private_ip
}