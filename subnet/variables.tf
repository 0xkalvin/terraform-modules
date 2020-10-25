variable "name" {
  type    = "string"
  default = ""
}

variable "environment" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "cidr_block" {
  type = "string"
}

variable "availability_zones" {
  type = "list"
}

variable "is_public" {
  type    = "string"
  default = "false"
}

variable "internet_gateway_id" {
  type    = "string"
  default = ""
}

variable "subnet_bits" {
  description = "Additional bits to add to the VPC cidr block"
  default     = 8
}
