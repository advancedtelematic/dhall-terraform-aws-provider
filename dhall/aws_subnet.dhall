
let AwsSubnetOptional =
  { arn: Optional Text
  , assign_ipv6_address_on_creation: Optional Bool
  , availability_zone: Optional Text
  , availability_zone_id: Optional Text
  , ipv6_cidr_block: Optional Text
  , ipv6_cidr_block_association_id: Optional Text
  , map_public_ip_on_launch: Optional Bool
  , owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsSubnetRequired =
  { cidr_block: Text
  , vpc_id: Text
  }
let AwsSubnet = AwsSubnetOptional //\\ AwsSubnetRequired

in
{ AwsSubnetOptional = AwsSubnetOptional
, AwsSubnetRequired = AwsSubnetRequired
, AwsSubnet = AwsSubnet
}
