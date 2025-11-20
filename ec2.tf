resource "aws_instance" "terraform" {
    ami = var.ami_id #mandatory
    instance_type = var.instance_type #mandatory
    vpc_security_group_ids = var.vpc_security_group_ids #mandatory
    tags = var.tags #optional
    
}
