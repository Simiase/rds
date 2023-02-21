resource "aws_subnet" "public_subnet" {
vpc_id                  = aws_vpc.vpc.id
cidr_block              = "${var.public_subnet_cidr}"
availability_zone      = "us-east-1a"
map_public_ip_on_launch = true

tags  ={
    name                = "public subnet"
}
}

resource "aws_route_table_association" "public-route-table-association"{
subnet_id            = "${aws_subnet.public_subnet.id}"
route_table_id       = "${aws_route_table.route_table.id}"
}


resource "aws_subnet" "private_subnet" {
vpc_id                  = aws_vpc.vpc.id
cidr_block              = "${var.private_subnet_cidr}"
availability_zone      = "us-east-1b"
map_public_ip_on_launch = true

tags  ={
    name                = "private subnet"
}
}

