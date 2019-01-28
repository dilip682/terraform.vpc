provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

resource "aws_vpc" "this" {
  cidr_block       = "${var.vpc_cidr_block}"
  instance_tenancy = "${var.instance_tenancy}"

  tags = {
    Name       = "${var.name}"
    Maintainer = "Terraform"
  }
}

resource "aws_subnet" "this" {
  vpc_id     = "${aws_vpc.this.id}"
  cidr_block = "${var.subnet_cidr_block}"

  tags = {
    Name       = "${aws_subnet.this.name}"
    Maintainer = "Terraform"
  }
}

output "vpc_id" {
  value = "${aws_vpc.this.*.id}"
}

output "subnet_id" {
  value = "${aws_subnet.this.id}"
}
