variable "aws_region" {
  default = "us-east-2"
}

variable "aws_profile" {
  default = "awsprofile-dilipbr"
}

variable "vpc_id" {
  default = ""
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = ""
}

variable "vpc_name" {
  default = ""
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "subnet_cidr_block" {
  default = "10.0.1.0/24"
}
