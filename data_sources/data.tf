data "aws_ami" "joindevops" {  
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "mysql" {
  instance_id = "i-08cb74bfb7d1994b2"
}

output "mysql_info" {
    # value = data.aws_instance.mysql
    value = data.aws_instance.mysql.public_ip
}