
let awsVpc =
  { assign_generated_ipv6_cidr_block = None Bool
  , enable_classiclink = None Bool
  , enable_classiclink_dns_support = None Bool
  , enable_dns_hostnames = None Bool
  , enable_dns_support = None Bool
  , instance_tenancy = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsVpc = awsVpc
}
