variable "region" {
  description = "AWS region"
  type = string
  default = "ap-south-1" 

}

variable "key_name" {
  type = string
}

variable "public_key_path" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
  sensitive = true
}

