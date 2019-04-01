
let AwsDefaultSubnetOptional =
  { map_public_ip_on_launch : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDefaultSubnetRequired =
  { availability_zone : Text }
let AwsDefaultSubnet = AwsDefaultSubnetOptional //\\ AwsDefaultSubnetRequired

in
{ AwsDefaultSubnetOptional = AwsDefaultSubnetOptional
, AwsDefaultSubnetRequired = AwsDefaultSubnetRequired
, AwsDefaultSubnet = AwsDefaultSubnet
}
