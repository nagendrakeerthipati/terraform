resource "aws_instance" "roboshop" {
  ami                    = var.ami_id
  instance_type          = var.enviroment == "dev" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = var.tags
}
resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = "Allow all inbound traffic and all outbound traffic"



  ingress {
    from_port        = var.num_from_port
    to_port          = var.num_to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.num_from_port
    to_port          = var.num_to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "allow_all"
  }
}
