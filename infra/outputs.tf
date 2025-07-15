output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.compute.ec2_public_ip
}

output "rds_endpoint" {
  description = "RDS endpoint address"
  value       = module.database.rds_endpoint
}

