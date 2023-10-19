resource "aws_route_table" "demoProjectPubRT" {
  vpc_id = aws_vpc.demoProject.id
  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demoProject.id
  }
  tags = {
    Name = "${var.vpc_name}-Pub-RT"
  }
}
resource "aws_route_table_association" "pubSubnet1" {
  subnet_id      = aws_subnet.demoProjectPubSubnet-1.id
  route_table_id = aws_route_table.demoProjectPubRT.id
}
resource "aws_route_table_association" "pubSubnet2" {
  subnet_id      = aws_subnet.demoProjectPubSubnet-2.id
  route_table_id = aws_route_table.demoProjectPubRT.id
}
resource "aws_route_table_association" "pubSubnet3" {
  subnet_id      = aws_subnet.demoProjectPubSubnet-3.id
  route_table_id = aws_route_table.demoProjectPubRT.id
}