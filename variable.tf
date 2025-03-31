variable "region" {
  type = string
  default = "ap-southeast-1"
}
#parameters for vpc module
variable "availability_zone_1" {
  type = string
  nullable = false
}
variable "availability_zone_2" {
  type = string
  nullable = false
}
variable "cidr_block" {
  type = string
  nullable = false
}
variable "public_subnet_ips" {
  type = list(string)
  nullable = false
  
}
variable "private_subnet_ips" {
  type = list(string)
  nullable = false
}

#parameter for ec2 module
variable "instance_type" {
  type        = string
  description = "Type of EC2 instance to launch. Example: t2.micro"
  default = "t2.micro"
}

variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" : "ami-01938df366ac2d954"
    "ap-northeast-1" : "ami-026c39f4021df9abe"
  }
}