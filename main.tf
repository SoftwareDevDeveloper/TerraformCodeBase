resource "aws_instance" "weather_node" {

  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_key_name
  security_groups = [aws_security_group.ec2_sg.name]

  user_data = <<EOF
  #¡/bin/bash
  sudo yum update
  sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
  EOF

    tags = var.default_tags
}









  