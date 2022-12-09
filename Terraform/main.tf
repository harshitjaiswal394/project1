data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2022-12-01"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
  key_name = "jenkins2"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}