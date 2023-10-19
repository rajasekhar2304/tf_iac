resource "aws_route_table" "demoProjectPvtRT" {
  vpc_id = aws_vpc.demoProject.id
  tags = {
    Name = "${var.vpc_name}-Pvt-RT"
  }
}
resource "aws_route_table_association" "pvtSubnet1" {
  subnet_id      = aws_subnet.demoProjectPvtSubnet-1.id
  route_table_id = aws_route_table.demoProjectPvtRT.id
}
resource "aws_route_table_association" "pvtSubnet2" {
  subnet_id      = aws_subnet.demoProjectPvtSubnet-2.id
  route_table_id = aws_route_table.demoProjectPvtRT.id
}
resource "aws_route_table_association" "pvtSubnet3" {
  subnet_id      = aws_subnet.demoProjectPvtSubnet-3.id
  route_table_id = aws_route_table.demoProjectPvtRT.id
}