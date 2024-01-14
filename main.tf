# ECS Task Definition
resource "aws_ecs_task_definition" "task_definition" {
  family                   = var.family
  container_definitions    = file(var.container_definitions_path)
  network_mode             = var.network_mode
  requires_compatibilities = var.compatibilities
  cpu                      = var.cpu
  memory                   = var.memory
  task_role_arn            = var.task_role_arn
  execution_role_arn       = var.execution_role_arn
}
