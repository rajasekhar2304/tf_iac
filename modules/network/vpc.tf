resource "aws_vpc" "demoProject" {
 cidr_block           = var.vpc_cidr
 enable_dns_hostnames = true
 tags = {
   Name        = var.vpc_name
   Owner       = var.owner
   environment = var.environment
 }
}
resource "aws_internet_gateway" "demoProject" {
 vpc_id = aws_vpc.demoProject.id
 tags = {
   Name = "${var.vpc_name}-IGW"
 }
}