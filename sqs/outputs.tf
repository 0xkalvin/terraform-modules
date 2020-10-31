output "id" {
  value = "${aws_sqs_queue.sqs_queue.id}"
}

output "arn" {
  value = "${aws_sqs_queue.sqs_queue.arn}"
}
