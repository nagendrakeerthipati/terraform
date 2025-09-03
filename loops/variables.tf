variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of .Devops pratice"

}

variable "instance_type" {
  default = "t3.micro"

}

variable "tags" {
  type = map(string)
  default = {
    Name = "Helloworld"
  }

}

variable "sg_name" {
  #default = "allow-all"

}

variable "num_from_port" {
  default = "0"

}

variable "num_to_port" {
  default = "0"

}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}

variable "enviroment" {
  default = {
    Name = "dev"
  }

}
