# Let's initialise terraform 
# Providers?
# AWS

# This code will eventually launch an EC2 instance for us

# provider is a keyword in Terraform to define the name of cloud provider

# Syntax:

provider "aws" {
# define the region to launch the ec2 instance in Ireland
	region = "eu-west-1"
}

resource "aws_instance" "app_instance" {
  # var.name_of_resource loads the value from variable.tf into main.tf
  ami = var.webapp_ami_id 

  #subnet_id = "aws_subnet.testing_subnet.id" # This line to be added after creation of subnet_id
  
  #vpc_security_group_ids = ["${aws_security_group.shahrukh_terraform_code_test.id}"] 
  
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
      Name = "${var.name}"
  }
  key_name = "ansible" # this key name needs to the as .pem file
  #aws_key_path = var.aws_key_path
  
}
resource "aws_vpc" "terraform_vpc_code_test" {
  cidr_block       = "14.20.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "andrew_terraform_vpc_code_test"
  }
}

#resource "aws_subnet" "testing_subnet" {

 # vpc_id = "vpc-07e47e9d90d2076da"
  #cidr_block = "enter the ip range that fits into your vpc range"
  #availability_zone = "eu-west-1a"
  #tags = {
  #  Name = "var.aws_subnet"
  #}
#}

















# Launching an EC2 instance from our Node_app AMI
# resource is the keyword that allows us to add aws resource

# Resource block of code:

#resource "aws_instance" "app_instance"{
	# add the AMI id between "" as below
	#ami = "ami-042af9229265c27d0"
	#subnet_id = "${aws_subnet.app_subnet.id}"
	 # This line to be added after creation of subnet_id

	## Let's add the type of instance we would like launch
	#instance_type = "t2.micro"
    
        # Do we need to enable public IP for our app
  #  associate_public_ip_address = true
    # Tags is to give name to our instance
    ##tags = {
   #     Name = "eng84_andrew_terraform_node_app"
  #  } 
#}#
#
# #Resource block of code ends here

#r#esource "aws_vpc" "Terraform_vpc_code_test"{
#	cidr_block = "14.20.0.0/16"
#	instance_tenancy = "default"
#
#	tags = {
#	  Name = "eng84_terraform_vpc"
#	}
#}
#
## Creating subnet
#resource "aws_subnet" "app_subnet" {
#	
#	vpc_id = "vpc-07e47e9d90d2076da"
#	cidr_block = "14.20.0.1/24"
#	availability_zone = "eu-west-1a"
#	
#	tags = {
#	   Name = "eng84_andrew_app_subnet"

#	}
#}


# Resource block of code for VPC ends here



# terraform init
# terraform plan
# terraform apply
# terraform destroy
