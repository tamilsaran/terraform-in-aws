variable "region" {
default = "us-east-1"
}
variable "vpc" {
default = "10.1.0.0/16"
description = "the vpc cidr"
}
variable "public" {
default = "10.1.1.0/24"
description = "the public cdir"
}
variable "private" {
default = "10.1.2.0/24"
description = "the private cdir"
}
variable "pub_zone" {
default = "us-west-1b"
description = "the public  availability_zone"
}
variable "pri_zone" {
default = "us-west-1c"
description = "the private  availability_zone"
}
variable "ami" {
default = "ami-0799ad445b5727125"
description = "the nginx "
}
variable "ins" {
default = "t2.micro"
description = "the instance "
}
variable "key" {
default = "us"
description = "the instance "
}



