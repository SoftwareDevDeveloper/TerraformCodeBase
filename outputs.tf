output "ec2_public_ip" {
  value = aws_instance.weather_node.public_ip

}