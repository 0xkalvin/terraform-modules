output "ids" {
  value = "${aws_subnet.subnet.*.id}"
}

output "route_table_ids" {
  value = "${aws_route_table_association.subnet_route_table_association.*.route_table_id}"
}
