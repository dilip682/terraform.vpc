resource "aws_vpc" "dcust-vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "dcust-vpc"
  }
}

resource "aws_subnet" "dcust-subnet1" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet1_cidr}"

  tags = {
    Name = "dcust-subnet1"
  }
}

output "vpc_id" {
  value = "${aws_vpc.dcust-vpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.dcust-subnet1.id}"
}
