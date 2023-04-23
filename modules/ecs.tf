#Creating ECS cluster

resource "aws_ecs_cluster" "app" {
  name = var.cluster_name
}

#ECS task definition
resource "aws_ecs_task_definition" "example" {
  family                   = var.container_name
  container_definitions    = jsonencode([{
    name      = var.container_name
    image     = var.container_image
    portMappings = [
      {
        containerPort = var.container_port
      }
    ]
  }])
  network_mode             = "awsvpc"
  
  execution_role_arn = "${aws_iam_role.ecs_tasks_execution_role.arn}"
  task_role_arn      = "${aws_iam_role.task-role.arn}"

}

#Creating ECS service
resource "aws_ecs_service" "example" {
  name            = var.container_name
  task_definition = aws_ecs_task_definition.example.arn
  desired_count   = var.desired_count

  load_balancer {
    target_group_arn = var.alb_target_group_arn
    container_name   = var.container_name
    container_port   = var.container_port
  }
}
