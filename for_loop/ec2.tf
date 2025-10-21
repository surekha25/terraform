resource "aws_instance" "terraform" {
  # for_each = var.instances
  for_each = toset(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  # instance_type = each.value
  instance_type = "t3.micro"
  vpc_security_group_ids  = [aws_security_group.allow_all.id]
  tags = {
    # Name = each.key
    Name = each.value
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all_for_terraform"
  description = "Allow all for terraform project"
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]    
  }

  ingress {
    from_port        = 0 # from port 0 - to port 0 means all ports
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all-terraform"
  }
}