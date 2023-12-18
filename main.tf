provider "aws" {
  region = var.region
  # put your acces and secret keys
  
}

module "my_vpc" {
    source                  = "./modules/vpc"
    vpc_cidr                = "10.0.0.0/16"
    public_subnets_cidr     = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnets_cidr    = ["10.0.3.0/24", "10.0.4.0/24"]
    azs                     = ["us-west-2a", "us-west-2b"]
    prefix_name             = var.prefix_name
}