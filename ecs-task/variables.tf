variable "name" {
  type = "string"
}

variable "environment_name" {
  type = "string"
}

variable "network_mode" {
  type    = "string"
  default = "awsvpc"
}

variable "execution_role_arn" {
  description = "IAM execution role for task"
}

variable "cpu" {
  default = 256
}

variable "memory" {
  default = 1024
}

variable "launch_type" {
  type    = "string"
  default = "FARGATE"
}

variable "cluster_id" {
  description = "ECS cluster identifier"
}

variable "desired_count" {
  default = "1"
}

variable "container_port" {
  default = 3000
}

variable "load_balancer_target_group_arn" {
  default     = ""
  description = "Security group for task"
}

variable "subnets" {
  type = "list"
}

variable "security_groups" {
  type = "list"
}

variable "ecr_repo_url" {
  type = "string"
}

variable "secrets" {
  default = ""
}

variable "environment" {
  description = "Task environment variables"
}

variable "port_mappings" {
  default     = ""
  description = "Task port mappings"
}

variable "region" {
  description = "AWS region to create"
}

variable "task_role_arn" {
  default     = ""
  description = "The ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services"
}

variable "app_type" {
  default     = "server"
  description = "Defines if task is a web server or a worker"
}
