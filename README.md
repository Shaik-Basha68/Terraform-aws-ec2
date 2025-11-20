# Terraform-aws-ec2

This Module createds EC2 instance.

### Inputs

* ami_id - (Required) User must supply ami_id 
* instance_type - (Required)  User must supply ami_id either t3 micro or small or medium or nano or t4g.nano or a1.medium
* vpc_security_group_ids - (Required) user must supply a list of security group IDS to attach EC2 instance
* tags - (Optional) user can supply the tags to attach EC2 instance

### Outputs


* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created 
* instance_id - Instance ID created 