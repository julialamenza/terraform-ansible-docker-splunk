##Find latest Ubuntu 16.04 AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

# Define splunk inside the public subnet
resource "aws_instance" "splunk" {
   ami = "${data.aws_ami.ubuntu.id}"
   instance_type = "t2.micro"
   key_name = "your-key"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgsplunk.id}"]
   associate_public_ip_address = true
   source_dest_check = false

  tags {
    Name = "splunk"
  }
}
