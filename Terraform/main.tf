data "aws_ami" "ubuntu-linux-2004" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = "jenkins2"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}