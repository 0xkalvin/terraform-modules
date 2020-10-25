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

variable "availability_zone" {
  type = "string"
}

variable "is_public" {
  type    = "string"
  default = false
}

variable "internet_gateway_id" {
  type    = "string"
  default = ""
}
