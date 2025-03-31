variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "image_id" {
  type        = string
}
variable "instance_type" {
  type        = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  nullable = false
}

variable "ec2_security_group_ids" {
  type = list(string)
  nullable = false
}
