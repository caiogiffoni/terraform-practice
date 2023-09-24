variable "cidr_vpc" {
  description = "cidr block for VPC"
  type        = string

}

variable "cidr_subnet" {
  description = "cidr block for subnet"
  type        = string

}

variable "environment" {
  description = "environment where resource is being used"
  type        = string

}