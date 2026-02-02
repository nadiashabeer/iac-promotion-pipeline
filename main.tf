terraform {
  backend "s3" {
    bucket         = "yourname-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

resource "aws_vpc" "tf_vpc" {
  cidr_block = "10.1.0.0/16"
}