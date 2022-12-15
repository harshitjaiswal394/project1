data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = var.instance_keypairkey

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}