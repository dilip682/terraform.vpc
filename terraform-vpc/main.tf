provider "aws" {
  # access_key = "${var.aws_access_key}"
  # secret_key = "${var.aws_secret_key}"
  profile = "${var.aws_profile}"

  region = "${var.aws_region}"
}

resource "aws_vpc" "vpc-dcust" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "vpc-dcust"
  }
}

resource "aws_subnet" "subnet-main" {
  vpc_id     = "${aws_vpc.vpc-dcust.id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "subnet-main"
  }
}
