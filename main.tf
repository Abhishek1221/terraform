resource "aws_instance" "web" {
ami  = var.ami
instance_type  = "t2.micro"

tags  = {
  Name = "dev-server1"
  }
}

terraform {
  backend "s3" {
    bucket = "bucket name"
    key = "folder/terraform.tfstate"
    region = "us_west-1"
    dynomodb_table = "state-lock"
  }
}
