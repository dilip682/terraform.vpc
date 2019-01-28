variable "aws_profile" {
  default = ""
}

variable "aws_region" {
  default = ""
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "tenancy" {
  default = "default"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
