variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
  
}

variable "instance_type" {
    description = "Mapping of workspace to instance type"
    type = string
    validation {
      condition = contains(["t3.micro", "t3.small", "t3.medium","t3.nano","t4g.nano","a1.medium"], var.instance_type)
      error_message = "Please select either t3 micro or small or medium"
    }
  
}
variable "vpc_security_group_ids" {
    description = "List of VPC security group IDs to associate with the instance"
    type        = list(string)
  
}

variable "tags" {
    description = "A map of tags to assign to the resource"
    type        = map(string)
    default     = {} #Optional variable with default empty map
  
}