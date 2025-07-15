output "vpc_id" {
  description = "VPC ID created in networking module"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public Subnet ID to launch EC2 instance"
  value       = aws_subnet.public[0].id
}

