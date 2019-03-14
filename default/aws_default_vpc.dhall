
let awsDefaultVpc =
  { enable_classiclink = None Bool
  , enable_classiclink_dns_support = None Bool
  , enable_dns_hostnames = None Bool
  , enable_dns_support = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDefaultVpc = awsDefaultVpc
}
