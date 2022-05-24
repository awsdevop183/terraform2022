resource "aws_vpc" "pfsense_vpc" {
  tags = {
    "Name" = "pfsense-VPC"
  }
  tags_all = {
    "Name" = "pfsense-VPC"
  }

  
}
resource "aws_subnet" "pfsense-internal" {
  vpc_id = aws_vpc.pfsense_vpc.id # vpc-0f24bc52659fd4ccd
  availability_zone = "us-east-1c"
cidr_block = "10.0.0.64/26"
  customer_owned_ipv4_pool = ""
  enable_dns64 = false
  enable_resource_name_dns_a_record_on_launch = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_native = false
  map_customer_owned_ip_on_launch = false
  map_public_ip_on_launch = false
  outpost_arn = ""
  private_dns_hostname_type_on_launch = "ip-name"
  tags = {
    Name = "pfsense-internal"
  }
  tags_all = {
    Name = "pfsense-internal"
  }
  
}