resource "aws_instance" "webserver" {
    ami = var.amiid
    vpc_security_group_ids = [ aws_security_group.global-sg-2026.id ]
    instance_type = var.machinetype
    key_name = var.keyname
    tags = {
      Name = var.mytag
    }
  
}