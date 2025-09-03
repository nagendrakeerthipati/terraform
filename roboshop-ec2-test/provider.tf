terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "my-roboshop-terraform-states" # Change to your bucket name
    key            = "roboshop/roboshop-ec2-test.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}





# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.98.0"
#     }
#   }

#   backend "s3" {
#     bucket       = "84s-remote-state"
#     key          = "ec2-module-test"
#     region       = "us-east-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }

# provider "aws" {
#   # Configuration options
# }

# terraform {
#   required_version = ">= 1.3.0"

#   backend "s3" {
#     bucket         = "my-roboshop-terraform-states" # Change to your bucket
#     key            = "roboshop/roboshop-ec2-test.tfstate"
#     region         = "ap-south-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# provider "aws" {
#   region = "ap-south-1"
# }

