variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "instance_type" {
  description = "EC2 instance type (t2.micro is free-tier)"
  type        = string
  default     = "t2.micro"
}
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "workshop"
}
variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH"
  type        = string
}
