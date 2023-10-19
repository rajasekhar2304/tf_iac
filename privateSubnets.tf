resource "aws_subnet" "demoProjectPvtSubnet-1" {
  vpc_id            = aws_vpc.demoProject.id
  cidr_block        = var.pvtSubnet1_cidr_block
  availability_zone = var.pubSubnet1Az
  tags = {
    Name = "${var.vpc_name}-pvtSubnet1"
  }
}
resource "aws_subnet" "demoProjectPvtSubnet-2" {
  vpc_id            = aws_vpc.demoProject.id
  cidr_block        = var.pvtSubnet2_cidr_block
  availability_zone = var.pubSubnet2Az
  tags = {
    Name = "${var.vpc_name}-pvtSubnet2"
  }
}
resource "aws_subnet" "demoProjectPvtSubnet-3" {
  vpc_id            = aws_vpc.demoProject.id
  cidr_block        = var.pvtSubnet3_cidr_block
  availability_zone = var.pubSubnet3Az
  tags = {
    Name = "${var.vpc_name}-pvtSubnet3"
  }
}