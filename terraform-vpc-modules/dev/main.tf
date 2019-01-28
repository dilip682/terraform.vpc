module "my_vpc" {
  source       = "../modules/vpc"
  vpc_cidr     = "192.168.0.0/16"
  tenancy      = "default"
  subnet1_cidr = "192.168.1.0/24"
  vpc_id       = "${module.my_vpc.vpc_id}"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = "1"
  ami_id        = "ami-04328208f4f0cf1fe"
  instance_type = "t2.micro"
  subnet_id     = "${module.my_vpc.subnet_id}"
}
