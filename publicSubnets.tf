resource "aws_subnet" "demoProjectPubSubnet-1" {
    vpc_id = aws_vpc.demoProject.id
    cidr_block = var.pubSubnet1_cidr_block
    availability_zone = var.pubSubnet1Az
    tags = {
      Name = "${var.vpc_name}-pubSubnet1"
    }  
}
resource "aws_subnet" "demoProjectPubSubnet-2" {
    vpc_id = aws_vpc.demoProject.id
    cidr_block = var.pubSubnet2_cidr_block
    availability_zone = var.pubSubnet2Az
    tags = {
      Name = "${var.vpc_name}-pubSubnet2"
    }  
}
resource "aws_subnet" "demoProjectPubSubnet-3" {
    vpc_id = aws_vpc.demoProject.id
    cidr_block = var.pubSubnet3_cidr_block
    availability_zone = var.pubSubnet3Az
    tags = {
      Name = "${var.vpc_name}-pubSubnet3"
    }  
}