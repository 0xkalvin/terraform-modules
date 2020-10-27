resource "aws_sqs_queue" "sqs_queue" {
  content_based_deduplication = "${var.content_based_deduplication}"
  delay_seconds               = "${var.delay_seconds}"
  fifo_queue                  = "${var.fifo_queue}"
  message_retention_seconds   = "${var.message_retention_seconds}"
  max_message_size            = "${var.max_message_size}"
  name                        = "${var.name}"
  receive_wait_time_seconds   = "${var.receive_wait_time_seconds}"
  visibility_timeout_seconds  = "${var.visibility_timeout_seconds}"
}
