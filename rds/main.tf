resource "aws_db_instance" "rds_instance" {
  allocated_storage      = "${var.allocated_storage}"
  db_subnet_group_name   = "${aws_db_subnet_group.subnet_group.name}"
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_version}"
  instance_class         = "${var.instance_class}"
  multi_az               = "${var.multi_az}"
  name                   = "${var.name}"
  identifier             = "${var.name}"
  password               = "${var.password}"
  port                   = "${var.port}"
  publicly_accessible    = "${var.publicly_accessible}"
  username               = "${var.username}"
  skip_final_snapshot    = "${var.skip_final_snapshot}"
  vpc_security_group_ids = ["${aws_security_group.rds_instance_security_group.id}"]

  provisioner "local-exec" {
    command = "${path.module}/generate-password.sh ${var.region} ${self.id} /${var.name}/database_password"
  }
}
