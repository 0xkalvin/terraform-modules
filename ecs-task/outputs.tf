output "task_arn" {
  value = "${aws_ecs_task_definition.task_definition.arn}"
}

output "family" {
  value = "${aws_ecs_task_definition.task_definition.family}"
}

output "revision" {
  value = "${aws_ecs_task_definition.task_definition.revision}"
}
