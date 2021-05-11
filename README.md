# Terraform and Benefits
## Terraform most used commands
### Terraform to launch ec2 with vpc
# What is Terraform
- Terraform is an open-source Infastructure as Code software tool by Hashicorp that provides a consistent Command Line workflow to manage hundreds of cloud services
- Terraform codifies cloud APIs into declarative configuration files

# Why Terraform
- Allows to efficiently scale up/down to meet user demand
- As Terraform uses declarative configuration files, it is cloud-independent, i.e. it works with AWS, GCP AZURE allowing for multiple cloud configuration

## Other IAC Tools







- Setting Env variables for our AWS secret and access keys
- On windows `click on windows keys and type settings`

```
Windows
In Search, search for and then select: System (Control Panel)
Click the Advanced system settings link.
Click Environment Variables. ...
In the Edit System Variable window, specify the value of the PATH environment variable. ...
```

- Name env variables as `AWS_ACCESS_KEY_ID` for secret key `AWS_SECRET_ACCESS_KEY`
- Let's create our Terraform env to access our AMI 

- Terraform commands:

```

# terraform init
# terraform plan
# terraform apply
# terraform destroy
```
 

```
- terraform init: initialises the terraform with required dependenceies of the provider mentioned in main.tf
- terraform plan - checks the syntax of the code. Lists the jobs to be done (in main.tf)
- terraform apply - launches and executes the tasks in main.tf
- terraform destroy - destroys/terminates services run in main.tf

```


# Main.tf:
```provider "aws"{
# define the region to launch the ec2 instance in Ireland
   region = "eu-west-1"
}

# Launch an EC2 instance from our webapp AMI
# resource is the keyword that allows us to add aws resource as task in Ansible
# Resource block of code

resource "aws_instance" "app_instance"{
    # add the AMI id between "" as below
    ami = "ami-06f3b56c1a4b195f2"


# Lets add the type of instance we would like to launch
    instance_type = "t2.micro"
   # Do we need to enable public IP for our app

    associate_public_ip_address = true
# tags is to give name to our instance
    tags = {
        Name = "eng84_andrew_terraform_node_app"

}

}
```

```
# launch an instance
resource "aws_instance" "app_instance" {
  ami           = "yourami-id"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
      Name = "yourname-app"
  }
  key_name = "enter ssh key name the .pem file"
}

```
## Clouds
<mxGraphModel><root><mxCell id="0"/><mxCell id="1" parent="0"/><mxCell id="2" value="" style="shape=image;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;aspect=fixed;imageAspect=0;image=https://miro.medium.com/max/1066/1*LRFaWc35HsUyKikmrzD9qw.png;" vertex="1" parent="1"><mxGeometry x="-460" y="350" width="520" height="271" as="geometry"/></mxCell></root></mxGraphModel>

