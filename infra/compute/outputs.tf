output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}


