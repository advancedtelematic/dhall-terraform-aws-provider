
let dnsEntry = {}

let awsVpcEndpoint =
  { auto_accept = None Bool
  , policy = None Text
  , private_dns_enabled = None Bool
  , route_table_ids = None (List Text)
  , security_group_ids = None (List Text)
  , subnet_ids = None (List Text)
  , vpc_endpoint_type = None Text
  , dns_entry = None (List (../dhall/aws_vpc_endpoint.dhall).DnsEntry)
  }

in
{ awsVpcEndpoint = awsVpcEndpoint
}
