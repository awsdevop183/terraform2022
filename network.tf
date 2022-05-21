resource "aws_vpc" "test" {
  cidr_block = var.vpc-cidr
  tags = {
    "Name" = "Terraform-vpc2"
  }
  
}