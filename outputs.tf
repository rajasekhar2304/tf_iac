output "vpc_id" {
    value = aws_vpc.demoProject.id
    sensitive = false  
}
output "vpc_arn" {
    value = aws_vpc.demoProject.arn
    sensitive = false  
}
output "igw_id" {
    value = aws_internet_gateway.demoProject.id
    sensitive = false  
}
output "pub_subnet_1_id" {
    value = aws_subnet.demoProjectPubSubnet-1.id
    sensitive = false
}
output "pub_subnet_2_id" {
    value = aws_subnet.demoProjectPubSubnet-2.id
    sensitive = false 
}
output "pub_subnet_3_id" {
    value = aws_subnet.demoProjectPubSubnet-3.id
    sensitive = false  
}
output "pvt_subnet_1_id" {
    value = aws_subnet.demoProjectPvtSubnet-1.id
    sensitive = false  
}
output "pvt_subnet_2_id" {
    value = aws_subnet.demoProjectPvtSubnet-2.id
    sensitive = false
}
output "pvt_subnet_3_id" {
    value = aws_subnet.demoProjectPvtSubnet-3.id
    sensitive = false  
}
output "pub_rt_id" {
    value = aws_route_table.demoProjectPubRT.id
    sensitive = false  
}
output "pvt_rt_id" {
    value = aws_route_table.demoProjectPvtRT.id
    sensitive = false  
}
output "sg_id" {
    value = aws_security_group.demoProjectSG.id
    sensitive = false  
}