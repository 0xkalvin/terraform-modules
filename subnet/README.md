# Subnet

It creates one or many subnets. A subnet can be public or private.

## Usage

```terraform

module "private_subnet" {
  source             = "github.com/0xkalvin/terraform-modules//subnet"
  name               = "${var.environment}_private_subnet"
  environment        = "${var.environment}"
  vpc_id             = "${data.aws_vpc.vpc.id}"
  cidr_block         = "${data.aws_vpc.vpc.cidr_block}"
  availability_zones = "${data.aws_availability_zones.availability_zones.names}"
}

module "public_subnet" {
  source              = "github.com/0xkalvin/terraform-modules//subnet"
  name                = "${var.environment}_public_subnet"
  environment         = "${var.environment}"
  vpc_id              = "${data.aws_vpc.vpc.id}"
  cidr_block          = "${data.aws_vpc.vpc.cidr_block}"
  availability_zones  = "${data.aws_availability_zones.availability_zones.names}"
  is_public           = true
  internet_gateway_id = "${data.aws_internet_gateway.vpc_internet_gateway.id}"
}
```
