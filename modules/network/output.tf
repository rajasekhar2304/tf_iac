output "vpc_name" {
  value = var.vpc_name
}
output "vpc_id" {
  value = aws_vpc.demoProject.id
}
output "environment" {
  value = var.environment
}
output "igw_id" {
  value = aws_internet_gateway.demoProject.id
}
output "public_subnet_id" {
  value = aws_subnet.demoProjectPublicSubnet-1.id
}
output "private_subnet_id" {
  value = aws_subnet.demoProjectPrivateSubnet-1.id
}
output "publicRT_id" {
  value = aws_route_table.demoProjectPublicRT.id
}