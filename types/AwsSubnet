
let AwsSubnetOptional =
  { assign_ipv6_address_on_creation : Optional Bool
  , availability_zone : Optional Text
  , availability_zone_id : Optional Text
  , ipv6_cidr_block : Optional Text
  , map_public_ip_on_launch : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsSubnetRequired =
  { cidr_block : Text
  , vpc_id : Text
  }
let AwsSubnet = AwsSubnetOptional //\\ AwsSubnetRequired

in
{ AwsSubnetOptional = AwsSubnetOptional
, AwsSubnetRequired = AwsSubnetRequired
, AwsSubnet = AwsSubnet
}
