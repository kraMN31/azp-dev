variable "region" {
  type    = string
  default = "us-east-1"
}
# vpc variable
variable "vpc_cidr_block" {
  description = "default vpc cidr block"
  type    = string
  default = "10.0.0.0/16"
}
#ec2 variables
variable "ami_id" {
  type    = string
  default = "ami-05fa00d4c63e32376"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

#web subnet variables
variable "web_subnet_cidr" {
    type = list(string) 
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "web_availability_zone" {
    type = list(string) 
    default = ["us-east-1a", "us-east-1b"]
}

#app subnet variables
variable "app_subnet_cidr" {
    type = list(string) 
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "app_availability_zone" {
    type = list(string) 
    default = ["us-east-1a", "us-east-1b"]
}

#db subnet variables
variable "db_subnet_cidr" {
    type = list(string) 
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "db_availability_zone" {
    type = list(string) 
    default = ["us-east-1a", "us-east-1b"]
}

#db instance variables
variable "db_instance" {
  type = map(any)
  default = {
    allocated_storage   = 10
    engine              = "mysql"
    engine_version      = "8.0.20"
    instance_class      = "db.t2.micro"
    multi_az            = true
    name                = "mydb"
    username            = "username"
    password            = "password"
    skip_final_snapshot = true
  }
}

#security group variables
variable "from_port" {
  type    = list(number)
  default = [80, 0, 3306, 32768]
}
variable "to_port" {
  type    = list(number)
  default = [80, 0, 3306, 65535]
}
variable "cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

#alb variables
variable "load_balancer_type" {
  type    = string
  default = "application"
}
variable "alb_port" {
  type    = number
  default = 80
}
variable "alb_protocol" {
  type    = string
  default = "HTTP"
}
variable "alb_type" {
  type    = string
  default = "forward"
}

#route table variable
variable "rt_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}