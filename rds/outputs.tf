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
