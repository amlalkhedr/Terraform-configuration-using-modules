module "vpc" {
  source            = "./vpc"
  region            = "us-east-1"
  cidr_block        = "10.0.0.0/16"
  public_cidr      = "10.0.1.0/24"
  private_cidr     = "10.0.2.0/24"
  availability_zone = "us-east-1a"
}

module "security_groups" {
  source   = "./security_groups"
  vpc_id   = module.vpc.my_vpc_id
}

module "ec2" {
  source            = "./ec2"
  ami               = "ami-0ebfd941bbafe70c6"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.public_subnet_id
  security_group_ids = [module.security_groups.bastion_sg_id]
}

# Output example
output "vpc_id" {
  value = module.vpc.my_vpc_id
}
