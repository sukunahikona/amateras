variable "project" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc" {
  description = "VPC configuration"
  type = object({
    cidr                 = string
    public_subnet_cidrs  = list(string)
    private_subnet_cidrs = list(string)
    availability_zones   = list(string)
  })
  default = {
    cidr                 = "10.0.0.0/16"
    public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
    availability_zones   = ["ap-northeast-1a", "ap-northeast-1c"]
  }
}

variable "ec2" {
  description = "EC2 instances configuration"
  type = object({
    public_bastion = object({
      instance_type     = string
      ssh_key_name      = string
      allowed_ssh_cidrs = list(string)
    })
  })
  default = {
    public_bastion = {
      instance_type     = "t3.micro"
      ssh_key_name      = "bastion-key"
      allowed_ssh_cidrs = ["0.0.0.0/0"]
    }
  }
}
