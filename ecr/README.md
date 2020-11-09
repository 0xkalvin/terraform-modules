# ECR

It creates an Elastic Container Registry Repository.

## Usage

```terraform
module "ecr" {
  source = "github.com/0xkalvin/terraform-modules//ecr"
  name   = "my-project-${terraform.workspace}"
}
```
