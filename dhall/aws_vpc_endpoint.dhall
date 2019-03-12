
let DnsEntryOptional = {}

let DnsEntryRequired = {}
let DnsEntry = DnsEntryOptional //\\ DnsEntryRequired

let AwsVpcEndpointOptional =
  { auto_accept : Optional Bool
  , policy : Optional Text
  , private_dns_enabled : Optional Bool
  , route_table_ids : Optional (List Text)
  , security_group_ids : Optional (List Text)
  , subnet_ids : Optional (List Text)
  , vpc_endpoint_type : Optional Text
  , dns_entry : Optional (List DnsEntry)
  }

let AwsVpcEndpointRequired =
  { service_name : Text
  , vpc_id : Text
  }
let AwsVpcEndpoint = AwsVpcEndpointOptional //\\ AwsVpcEndpointRequired

in
{ AwsVpcEndpointOptional = AwsVpcEndpointOptional
, AwsVpcEndpointRequired = AwsVpcEndpointRequired
, AwsVpcEndpoint = AwsVpcEndpoint
, DnsEntry = DnsEntry
}
