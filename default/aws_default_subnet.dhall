
let awsDefaultSubnet =
  { map_public_ip_on_launch = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDefaultSubnet = awsDefaultSubnet
}
