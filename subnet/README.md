# Usage

```terraform

data "aws_availability_zones" "availability_zones" {
  state = "available"
}

data "aws_vpc" "vpc" {
    default = true
}

data "aws_internet_gateway" "vpc_internet_gateway" {
  filter {
    name   = "attachment.vpc-id"
    values = ["${data.aws_vpc.vpc.id}"]
  }
}

module "private_subnet" {
  source = "../subnet"

  name               = "${var.environment}_private_subnet"
  environment        = "${var.environment}"
  vpc_id             = "${data.aws_vpc.vpc.id}"
  cidr_block         = "${data.aws_vpc.vpc.cidr_block}"
  availability_zones = "${data.aws_availability_zones.availability_zones.names}"
}

module "public_subnet" {
  source = "../subnet"

  name                = "${var.environment}_public_subnet"
  environment         = "${var.environment}"
  vpc_id              = "${data.aws_vpc.vpc.id}"
  cidr_block          = "${data.aws_vpc.vpc.cidr_block}"
  availability_zones  = "${data.aws_availability_zones.availability_zones.names}"
  is_public           = true
  internet_gateway_id = "${data.aws_internet_gateway.vpc_internet_gateway.id}"
}

```
