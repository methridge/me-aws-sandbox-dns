variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "username" {
  description = "User name for access and to prefix all resources. ex: awesomeuser"
  type        = string
}

variable "zone_name" {
  description = "Your public DNS Zone. ex: aws.awesomedomain.com"
  type        = string
}
