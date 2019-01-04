variable "aws_region" {
  default = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}

variable "ssh_user" {
  default = "ubuntu"
}

#variable "key_path" {
#  description = "SSH Public Key path"
#  default = "/home/jlamenza/.ssh/id_rsa.pub"
#}
