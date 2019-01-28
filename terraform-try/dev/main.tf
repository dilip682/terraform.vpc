module "my_vpc" {
  source            = "../modules/vpc"
  name              = "name-from-variable-vpc"
  vpc_cidr_block    = "10.172.0.0/16"
  instance_tenancy  = "default"
  subnet_name       = "dev-subnet1"
  subnet_cidr_block = "10.172.1.0/24"
  vpc_id            = "${module.my_vpc.vpc_id}"
}
