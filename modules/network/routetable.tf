resource "aws_route_table" "demoProjectPublicRT" {
  vpc_id = aws_vpc.demoProject.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demoProject.id
  }
  tags = {
    Name = "${var.vpc_name}-Pub-RT"
  }
}
resource "aws_route_table_association" "demoProject-pubsubnet-1" {
  subnet_id      = aws_subnet.demoProjectPublicSubnet-1.id
  route_table_id = aws_route_table.demoProjectPublicRT.id
}
resource "aws_route_table" "demoProjectPrivateRT" {
 vpc_id = aws_vpc.demoProject.id
 tags = {
   Name = "${var.vpc_name}-Pvt-RT"
 }
}
resource "aws_route_table_association" "demoProject-pvtsubnet-1" {
  subnet_id      = aws_subnet.demoProjectPrivateSubnet-1.id
  route_table_id = aws_route_table.demoProjectPrivateRT.id
}