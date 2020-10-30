output "address" {
  value = "${aws_db_instance.rds_instance.address}"
}

output "arn" {
  value = "${aws_db_instance.rds_instance.arn}"
}

output "id" {
  value = "${aws_db_instance.rds_instance.id}"
}

output "name" {
  value = "${aws_db_instance.rds_instance.name}"
}

output "port" {
  value = "${aws_db_instance.rds_instance.port}"
}

output "username" {
  value = "${aws_db_instance.rds_instance.username}"
}

output "security_group_id" {
  value = "${aws_security_group.rds_instance_security_group.id}"
}
