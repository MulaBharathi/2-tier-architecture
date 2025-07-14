variable "aws_region" {
	description = "AWS region to deploy resources"
	default = "ap-south-1"
}
variable "key_name" {
	description = "EC2 key pair name for SSH"
}
variable "public_key_path" {
	description = "path to the public key file"
}
variable "instance_type" {
	description = "EC2 instance type"
	type = "t2.micro"
}
variable "db_username" {
	description = "RDS DB master username"
	default= "admin"
}
variable "db_password" {
	description = "RDS DB master password"
	sensitive = true
}
variable "db_name"{
	description = "rds database name"
	default = "myappdb"
}
