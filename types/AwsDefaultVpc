
let AwsDefaultVpcOptional =
  { enable_classiclink : Optional Bool
  , enable_classiclink_dns_support : Optional Bool
  , enable_dns_hostnames : Optional Bool
  , enable_dns_support : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDefaultVpcRequired = {}
let AwsDefaultVpc = AwsDefaultVpcOptional //\\ AwsDefaultVpcRequired

in
{ AwsDefaultVpcOptional = AwsDefaultVpcOptional
, AwsDefaultVpcRequired = AwsDefaultVpcRequired
, AwsDefaultVpc = AwsDefaultVpc
}
