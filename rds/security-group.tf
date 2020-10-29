resource "aws_security_group" "rds_instance_security_group" {
  name        = "${var.name}"
  description = "Security group for RDS instance"

  vpc_id = "${var.vpc_id}"
}

resource "aws_security_group_rule" "allow_all_outbound" {
  type        = "egress"
  from_port   = 0
  to_port     = 65535
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.rds_instance_security_group.id}"
}
