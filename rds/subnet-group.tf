resource "aws_db_subnet_group" "subnet_group" {
  name        = "${var.name}"
  description = "Subnet Group for ${var.name} database instance"
  subnet_ids  = ["${var.subnets_ids}"]

  tags {
    Environment = "${var.environment}"
  }
}
