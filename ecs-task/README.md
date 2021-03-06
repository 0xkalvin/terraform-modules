# ECS Task

It creates an ECS service and its task definition to be used. The task can have two types: a `server` (that will need a load balancer to forward all HTTP requests) or a `worker` (typically a queue consumer or listener job).

## Usage

```terraform
module "server_task" {
  source                         = "github.com/0xkalvin/terraform-modules//ecs-task"
  name                           = "${var.project}-server-${terraform.workspace}"
  environment_name               = "production"
  execution_role_arn             = "${aws_iam_role.server_task_iam_role.arn}"
  cluster_id                     = "${module.ecs_cluster.cluster_id}"
  container_port                 = "3000"
  subnets                        = "${data.aws_subnet_ids.subnets_from_default_vpc.ids}"
  security_groups                = ["${aws_security_group.server_task_security_group.id}"]
  ecr_repo_url                   = "${module.ecr.url}"
  environment                    = "${data.template_file.server_environment.rendered}"
  port_mappings                  = "${data.template_file.port_mappings.rendered}"
  region                         = "${var.region}"
  load_balancer_target_group_arn = "${aws_lb_target_group.load_balancer_target_group.arn}"
  task_role_arn                  = "${aws_iam_role.server_task_iam_role.arn}"
  app_type                       = "server"
  secrets                        = "${data.template_file.base_secrets.rendered}"
}
```
