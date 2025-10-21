variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "Terraform-demo"
        Terraform = "True"
        Project = "Join Devops"
        Environment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform"
    description = "security Group Name to attach to EC2 instance" # optional
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port"{
    type = number
    default = 0
}

variable "ingress_to_port"{
    type = number
    default = 0
}

variable "eggress_from_port"{
    type = number
    default = 0
}

variable "eggress_to_port"{
    type = number
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"  
}