resource "aws_subnet" "subnet" {
  vpc_id = "${var.vpc_id}"

  count = "${length(var.availability_zones)}"

  cidr_block = "${cidrsubnet(var.cidr_block, var.subnet_bits, count.index)}"

  availability_zone = "${element(var.availability_zones, count.index)}"

  map_public_ip_on_launch = "${var.is_public}"

  tags = {
    Name        = "${var.name}-${count.index}"
    Environment = "${var.environment}"
  }
}

resource "aws_route_table" "subnet_route_table" {
  vpc_id = "${var.vpc_id}"
  count  = "${length(var.availability_zones)}"

  tags = {
    Name        = "${var.name}-subnet-route-table-${count.index}"
    Environment = "${var.environment}"
  }
}

resource "aws_route_table_association" "subnet_route_table_association" {
  count          = "${length(var.availability_zones)}"
  subnet_id      = "${element(aws_subnet.subnet.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.subnet_route_table.*.id, count.index)}"
}

// Only for public subnets
resource "aws_route" "internet_gateway_route" {
  count                  = "${var.is_public == "true" ? length(var.availability_zones) : 0 }"
  route_table_id         = "${element(aws_route_table.subnet_route_table.*.id, count.index)}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${var.internet_gateway_id}"
}
