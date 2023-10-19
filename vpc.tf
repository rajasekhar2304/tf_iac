resource "aws_vpc" "demoProject" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
        Owner = var.created_by
        Environment = var.env
    }
}
resource "aws_internet_gateway" "demoProject" {
    vpc_id = aws_vpc.demoProject
    tags = {
      Name = "${var.vpc_name}-IGW"
    }  
}