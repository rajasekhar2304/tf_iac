resource "aws_subnet" "demoProjectPublicSubnet-1" {
 vpc_id            = aws_vpc.demoProject.id
 cidr_block        = var.public_subnet1_cidr
 availability_zone = "us-east-1a"
 tags = {
   Name = "${var.vpc_name}-pubSubnet-1"
 }
}
resource "aws_subnet" "demoProjectPrivateSubnet-1" {
 vpc_id            = aws_vpc.demoProject.id
 cidr_block        = var.private_subnet1_cidr
 availability_zone = "us-east-1a"
 tags = {
   Name = "${var.vpc_name}-pvtSubnet-1"
 }
}