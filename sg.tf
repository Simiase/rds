resource "aws_security_group" "security_group"{   
name           = "project security group"
description    = "allow access on port 22 and 80"
vpc_id         = aws_vpc.vpc.id

ingress {
description    = "MYSQL/Aurora"
from_port      = 3306
to_port        = 3306
protocol       = "tcp"
cidr_blocks    = ["0.0.0.0/0"]
}

ingress {
description    = "ssh access"
from_port      = 22
to_port        = 22
protocol       = "tcp"
cidr_blocks    =["0.0.0.0/0"]
}

egress {
from_port      = 0
to_port        = 0
protocol       = "-1"
cidr_blocks    = ["0.0.0.0/0"]
}

tags           ={
name           = "security group"
}
}