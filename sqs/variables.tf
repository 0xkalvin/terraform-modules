variable "content_based_deduplication" {
  default     = false
  description = "Enables content-based deduplication for FIFO queues"
}

variable "delay_seconds" {
  default     = 0
  description = "The time in seconds that the delivery of all messages in the queue will be delayed"
}

variable "fifo_queue" {
  default = false
}

variable "message_retention_seconds" {
  default     = 345600
  description = "The number of seconds Amazon SQS retains a message"
}

variable "max_message_size" {
  default     = 262144
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it"
}

variable "name" {
  type = "string"
}

variable "receive_wait_time_seconds" {
  default     = 0
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning"
}

variable "visibility_timeout_seconds" {
  default     = 30
  description = "The visibility timeout for the queue"
}
