
let awsSubnet =
  { assign_ipv6_address_on_creation = None Bool
  , availability_zone = None Text
  , availability_zone_id = None Text
  , ipv6_cidr_block = None Text
  , map_public_ip_on_launch = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsSubnet = awsSubnet
}
