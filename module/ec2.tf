data "aws_ami" "web-ami" {
  most_recent = true
  owners = ["self"]

  filter {
    name = "name"
    values = var.ami_name
  }
}
resource "aws_instance" "webserver" {
    ami = data.aws_ami.web-ami.id
    vpc_security_group_ids = [ aws_security_group.global-sg-2026.id ]
    instance_type = var.machinetype
    key_name = var.keyname
    tags = {
      Name = var.mytag
    }
  
}