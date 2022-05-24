resource "aws_route_table" "pfsensepub" {
    vpc_id = aws_vpc.pfsense_vpc.id
    route  {
        cidr_block = "0.0.0.0/0"
        destination_prefix_list_id = ""
        gateway_id = "igw-0a4aaec9548e20543"
        instance_id = ""
        local_gateway_id = ""
        nat_gateway_id = ""
        transit_gateway_id = ""
        vpc_endpoint_id = ""
        vpc_peering_connection_id = ""
    }
    tags = {
              Name = "pfsense-public"
            }
    tags_all ={
        Name = "pfsense-public"
    }
}
resource "aws_route_table" "pfsenseprivate" {
    vpc_id = aws_vpc.pfsense_vpc.id
    route {
        carrier_gateway_id = ""
        cidr_block = "0.0.0.0/0"
        core_network_arn = ""
        destination_prefix_list_id = ""
        egress_only_gateway_id = ""
        gateway_id = ""
        instance_id = ""
        local_gateway_id = ""
        nat_gateway_id = ""
        network_interface_id = "eni-0203c279686ad9971"
        transit_gateway_id = ""
        vpc_endpoint_id = ""
        vpc_peering_connection_id = ""
        }
    tags = {
              "Name": "pfsense-private"
            }
    tags_all = {
        "Name": "pfsense-private"
    }

    }
resource "aws_route_table_association" "privateroute" {
    subnet_id = aws_subnet.pfsense-internal.id
    route_table_id = aws_route_table.pfsenseprivate.id

  
}