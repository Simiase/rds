resource "aws_db_instance" "rds" {
allocated_storage    = 10
db_name              = "mydb"
engine               = "mysql"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
username             = "admin"
password             = "S1M1leoluwa" 
db_subnet_group_name = aws_db_subnet_group.subnet.name
skip_final_snapshot  = true
multi_az            = true
}

resource "aws_db_subnet_group" "subnet" {
name       = "projectrds"
subnet_ids = ["${aws_subnet.public_subnet.id}","${aws_subnet.private_subnet.id}"]


tags = {
    Name = "subnet group"
}
}

output "rds_endpoint" {
    value = aws_db_instance.rds.endpoint
}