
let DnsEntryOptional =
  { dns_name: Optional Text
  , hosted_zone_id: Optional Text
  }

let DnsEntryRequired = {}
let DnsEntry = DnsEntryOptional //\\ DnsEntryRequired

let AwsVpcEndpointOptional =
  { auto_accept: Optional Bool
  , cidr_blocks: Optional (List Text)
  , network_interface_ids: Optional (List Text)
  , policy: Optional Text
  , prefix_list_id: Optional Text
  , private_dns_enabled: Optional Bool
  , route_table_ids: Optional (List Text)
  , security_group_ids: Optional (List Text)
  , state: Optional Text
  , subnet_ids: Optional (List Text)
  , vpc_endpoint_type: Optional Text
  , dns_entry: Optional (List DnsEntry)
  }

let AwsVpcEndpointRequired =
  { service_name: Text
  , vpc_id: Text
  }
let AwsVpcEndpoint = AwsVpcEndpointOptional //\\ AwsVpcEndpointRequired

in
{ AwsVpcEndpointOptional = AwsVpcEndpointOptional
, AwsVpcEndpointRequired = AwsVpcEndpointRequired
, AwsVpcEndpoint = AwsVpcEndpoint
, DnsEntryOptional = DnsEntryOptional
, DnsEntryRequired = DnsEntryRequired
, DnsEntry = DnsEntry
}
