module "dev_demoProject" {
  source             = "../modules/network"
  vpc_cidr           = "10.90.0.0/16"
  vpc_name           = "DemoProject-VPC"
  owner              = "Rajasekhar"
  environment        = "Dev"
  public_subnet1_cidr  = "10.90.1.0/24"
  private_subnet1_cidr = "10.90.10.0/24"
}