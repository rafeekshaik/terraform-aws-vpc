variable "vpc_cidr" {
 
}
variable "enable_dns_hostnames" {
  
}

variable "project_name" {
  
}
variable "environment" {
  
}
variable "common_tags" {
  
}
variable "vpc_tags" {
default = {}
}
variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  type = list
    validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "public subnet cidrs should be 2"
  }
}
variable "public_subnet_tags" {
 default = {} 
}

variable "private_subnet_cidrs" {
  type = list
    validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "public subnet cidrs should be 2"
  }
}
variable "private_subnet_tags" {
 default = {} 
}
variable "database_subnet_cidrs" {
  type = list
    validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "public subnet cidrs should be 2"
  }
}
variable "database_subnet_tags" {
 default = {} 
}
variable "nat_tags" {
  default = {}
}
variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
 default = {} 
}
variable "database_route_table_tags" {
 default = {} 
}
variable "peering_tags" {
 default = {} 
}
variable "is_peering_required" {
  default = "true"
}