variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type = string
  
}
variable "container_name" {
  type    = string
}

variable "container_image" {
  type    = string
}

variable "container_port" {
  type    = number
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "alb_target_group_arn" {
  type = string
}
