variable "sg" {
  type    = list(string)
  default = ["sg-0e5d5ad00114fcbe6"]

}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the EC2 instance"

  default = {
    Name        = "roboshop-cart"
    terraform   = "true"
    environment = "dev"
  }
}


variable "instance_type" {
  default = "t3.small"

}
