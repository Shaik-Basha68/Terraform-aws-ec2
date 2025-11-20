variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
    default = "ami-027308df79a86d22c"
  
}
variable "instance_type" {
    description = "Mapping of workspace to instance type"
    type = string
    default = "a1.medium"
  
}
variable "vpc_security_group_ids" {
    description = "List of VPC security group IDs to associate with the instance"
    type        = list(string)
    default = ["sg-00b46876889e249b6"]
  
}
variable "tags" {
    description = "A map of tags to assign to the resource"
    type        = map(string)
    default     = {
        Name        = "catalogue-server"
        Environment = "Production"
    } #Optional variable with default empty map
  
}