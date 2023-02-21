resource "aws_vpc" "vpc" {
    cidr_block      = "${var.vpc_cidr}"
    instance_tenancy = "default"

    tags ={
      Name           = " vpc"
    
}
    }
resource "aws_internet_gateway" "igw"{
 vpc_id            = aws_vpc.vpc.id

 tags = {
    Name         = "igw"
 }
}


resource "aws_route_table" "route_table" {
vpc_id                 = aws_vpc.vpc.id

route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}
tags  ={
    Name              = "route table"
}
}