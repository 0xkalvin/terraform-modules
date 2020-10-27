data "template_file" "task_definition_template" {
  template = "${file("${path.module}/templates/task-definition.tpl")}"

  vars = {
    name         = "${var.name}"
    ecr_repo_url = "${var.ecr_repo_url}"
    cpu          = "${var.cpu}"
    memory       = "${var.memory}"
    environment  = "${var.environment}"
    secrets      = "${var.secrets}"
    portMappings = "${var.port_mappings}"
  }
}
