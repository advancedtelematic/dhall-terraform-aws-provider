
let AwsVpcOptional =
  { assign_generated_ipv6_cidr_block : Optional Bool
  , enable_classiclink : Optional Bool
  , enable_classiclink_dns_support : Optional Bool
  , enable_dns_hostnames : Optional Bool
  , enable_dns_support : Optional Bool
  , instance_tenancy : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsVpcRequired =
  { cidr_block : Text }
let AwsVpc = AwsVpcOptional //\\ AwsVpcRequired

in
{ AwsVpcOptional = AwsVpcOptional
, AwsVpcRequired = AwsVpcRequired
, AwsVpc = AwsVpc
}
