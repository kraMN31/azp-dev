#AWS provider variable
region = "us-east-1"

#VPC variables
vpc_cidr_block = "10.0.0.0/16"
Name           = "azp_vpc"

availability_zone       = ["us-east-1a", "us-east-1b"]
map_public_ip_on_launch = true

#web-subnet variables
web_subnet_cidr = ["10.01.0/24", "10.02.0/24"]

#application subnet variables
app_subnet_cidr = ["10.0.11.0/24", "10.0.12.0/24"]

#db subnet variables
db_subnet_cidr = ["10.0.21.0/24", "10.0.22.0/24", "10.0.3.0/24"]

#route table variable
rt_cidr_block = "0.0.0.0/0"

#ec2 instance variables
ami_id        = "ami-05fa00d4c63e32376"
instance_type = "t2.micro"

#security group variables
from_port  = [80, 0, 3306, 32768]
to_port    = [80, 0, 3306, 65535]
cidr_block = "0.0.0.0/0"

#alb variables
load_balancer_type = "application"
alb_port           = 80
alb_protocol       = "HTTP"
alb_type           = "forward"

##db instance variables
allocated_storage   = 10
engine              = "mysql"
engine_version      = "8.0.20"
instance_class      = "db.t2.micro"
multi_az            = true
name                = "mydb"
username            = "username"
password            = "password"
skip_final_snapshot = true