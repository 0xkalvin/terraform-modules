# ECS Cluster

It creates an ECS cluster

## Usage

```terraform
module "ecs_cluster" {
  source = "github.com/0xkalvin/terraform-modules//ecs-cluster"
  name   = "${terraform.workspace}-microservices-cluster"
}
```
