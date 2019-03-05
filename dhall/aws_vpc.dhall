
let AwsVpcOptional =
  { arn: Optional Text
  , assign_generated_ipv6_cidr_block: Optional Bool
  , default_network_acl_id: Optional Text
  , default_route_table_id: Optional Text
  , default_security_group_id: Optional Text
  , dhcp_options_id: Optional Text
  , enable_classiclink: Optional Bool
  , enable_classiclink_dns_support: Optional Bool
  , enable_dns_hostnames: Optional Bool
  , enable_dns_support: Optional Bool
  , instance_tenancy: Optional Text
  , ipv6_association_id: Optional Text
  , ipv6_cidr_block: Optional Text
  , main_route_table_id: Optional Text
  , owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsVpcRequired =
  { cidr_block: Text }
let AwsVpc = AwsVpcOptional //\\ AwsVpcRequired

in
{ AwsVpcOptional = AwsVpcOptional
, AwsVpcRequired = AwsVpcRequired
, AwsVpc = AwsVpc
}
