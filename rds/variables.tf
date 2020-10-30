variable "allocated_storage" {
  description = "The allocated storage in gibibytes"
}

variable "engine" {
  default     = "postgres"
  description = "The database engine to use"
}

variable "engine_version" {
  default     = "10.1"
  description = "The engine version to use"
}

variable "environment" {
  description = "The environment for the instance"
}

variable "instance_class" {
  default     = "db.t2.micro"
  description = "The instance type of the RDS instance"
}

variable "name" {
  description = "The instance name"
}

variable "multi_az" {
  default     = false
  description = "Specifies if the RDS instance is multi-AZ"
}

variable "username" {
  description = "The master username for the instance"
}

variable "password" {
  default = "dummy_password_that_will_change_after_creation"
  description = "The password for the instance master user"
}

variable "port" {
  default     = "5432"
  description = "The database port"
}

variable "publicly_accessible" {
  default     = false
  description = "Specifies if the instance is accessible to the public internet"
}

variable "region" {
  type = "string"
}

variable "subnets_ids" {
  type        = "list"
  description = "A list of VPC subnet IDs"
}

variable "skip_final_snapshot" {
  default     = true
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
}

variable "vpc_id" {
  description = "The VPC identifier"
}
