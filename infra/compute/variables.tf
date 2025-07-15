variable "key_name" {
  description = "EC2 key pair name for SSH"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID to launch EC2 in"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default = "t2.micro"
}

