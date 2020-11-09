# VPC

It creates a VPC.

## Usage

```terraform
module "vpc" {
  source       = "github.com/0xkalvin/terraform-modules//vpc"
  name         = "vpc-${terraform.workspace}"
  environment  = "production"
  cidr         = "10.0.0.0/16"
}
```
