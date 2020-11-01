resource "aws_ecs_task_definition" "task_definition" {
  family                   = "${var.name}"
  network_mode             = "${var.network_mode}"
  execution_role_arn       = "${var.execution_role_arn}"
  cpu                      = "${var.cpu}"
  memory                   = "${var.memory}"
  requires_compatibilities = ["${var.launch_type}"]
  container_definitions    = "${data.template_file.task_definition_template.rendered}"
  task_role_arn            = "${var.task_role_arn}"

  tags = {
    Application = "${var.name}"
    Environment = "${var.environment_name}"
  }

  depends_on = [
    "data.template_file.task_definition_template",
  ]
}

resource "aws_ecs_service" "service" {
  name            = "${var.name}"
  cluster         = "${var.cluster_id}"
  task_definition = "${aws_ecs_task_definition.task_definition.arn}"
  desired_count   = "${var.desired_count}"
  launch_type     = "${var.launch_type}"

  network_configuration {
    subnets         = ["${var.subnets}"]
    security_groups = ["${var.security_groups}"]

    // TODO: work with private subnets
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = "${var.load_balancer_target_group_arn}"
    container_name   = "${var.name}"
    container_port   = "${var.container_port}"
  }

  depends_on = ["aws_ecs_task_definition.task_definition"]
}
