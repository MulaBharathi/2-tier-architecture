variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

variable "db_username" {
  description = "Master username for RDS"
  type        = string
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ID for the RDS instance"
  type        = string
}

variable "private_subnet_ids" {
  description = "list of Private subnet IDs to use for the RDS subnet group"
  type        = list(string)
}

