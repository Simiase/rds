resource "aws_instance" "project_instance"{
    ami                    = "ami-0aa7d40eeae50c9a9"
    instance_type          = "t2.micro"
    subnet_id            = "${aws_subnet.public_subnet.id}"
    vpc_security_group_ids = [aws_security_group.security_group.id]
    key_name               = "ec2key"
    
 

    tags ={
        name               = "project_instance"
    }
}
