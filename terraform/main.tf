#Module for AWS ECS
module "ecs" {
  source              = "./modules"
  region              = "us-east-1"
  cluster_name        = "first-cluster"
  container_name      = "first-container"
  container_image     = "1234567890.dkr.ecr.us-east-1.amazonaws.com/demo/nginx"
  container_port      = 80
  desired_count       = 1
  
}
