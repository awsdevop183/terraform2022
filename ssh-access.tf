resource "aws_security_group" "ssh_access2" {
    vpc_id = aws_vpc.pfsense_vpc.id
    description = "pfsense-internal"
    tags = {
              "Name": "pfsense-internal"
            }
    tags_all = {
        "Name": "pfsense-internal"
    }
    egress = [
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ],
        "description": "",
        "from_port": 0,
        "ipv6_cidr_blocks": [],
        "prefix_list_ids": [],
        "protocol": "-1",
        "security_groups": [],
        "self": false,
        "to_port": 0
        }
    ]
    ingress = [
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ],
        "description": "",
        "from_port": -1,
        "ipv6_cidr_blocks": [],
        "prefix_list_ids": [],
        "protocol": "icmp",
        "security_groups": [],
        "self": false,
        "to_port": -1
        },
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ],
        "description": "",
        "from_port": 22,
        "ipv6_cidr_blocks": [],
        "prefix_list_ids": [],
        "protocol": "tcp",
        "security_groups": [],
        "self": false,
        "to_port": 22
        },
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ],
        "description": "",
        "from_port": 3389,
        "ipv6_cidr_blocks": [],
        "prefix_list_ids": [],
        "protocol": "tcp",
        "security_groups": [],
        "self": false,
        "to_port": 3389
        }


    ]

  
}