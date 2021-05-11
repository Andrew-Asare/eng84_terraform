## variable.tf
# creating variables to apply DRY using Terraform variable.tf
# these variables can be called in our main.tf
variable "vpc_id" {
  default = "vpc-07e47e9d90d2076da"
}

variable "name"{
	default = "eng84_andrew_terraform_vpc"
}

variable "webapp_ami_id" {
   default = "ami-06f3b56c1a4b195f2"

}

variable "aws_subnet_name" {
  default = "eng84_andrew_terraform_subnet"

}


variable "aws_key_name" {
    default = "eng84devops"
}

variable "aws_key_path" {
   default = "~/.ssh/eng84devops.pem"

}
