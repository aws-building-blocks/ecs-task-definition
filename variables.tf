variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "family" {
  type        = string
  description = "(Required) A unique name for your task definition."
}

variable "container_definitions_path" {
  type        = string
  description = "Path to a JSON file containing a list of valid container definitions"
}

variable "network_mode" {
  type        = string
  description = "(Optional) Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host."
  default     = "awsvpc"
}

variable "compatibilities" {
  type        = list(string)
  description = "(Optional) Set of launch types required by the task. The valid values are EC2 and FARGATE."
  default     = ["FARGATE"]
}

variable "cpu" {
  type        = number
  description = "(Optional) Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required."
  default     = null
}

variable "memory" {
  type        = number
  description = "(Optional) Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required."
  default     = null
}

variable "task_role_arn" {
  type        = string
  description = "(Optional) ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services."
  default     = null
}

variable "execution_role_arn" {
  type        = string
  description = "(Optional) ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume."
}
