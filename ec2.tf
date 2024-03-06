# EC2 Web Server
resource "aws_instance" "crm-web-server" {
  ami           = "ami-0eb199b995e2bc4e3"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.crm-web-sn.id
  key_name = "ravi-oero"
  vpc_security_group_ids = aws_security_group.crm-web-sg.id
  user_data = file("setup.sh")
    tags = {
    Name = "crm-web-server"
  }
}