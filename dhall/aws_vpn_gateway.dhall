
let AwsVpnGatewayOptional =
  { amazon_side_asn : Optional Text
  , availability_zone : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id : Optional Text
  }

let AwsVpnGatewayRequired = {}
let AwsVpnGateway = AwsVpnGatewayOptional //\\ AwsVpnGatewayRequired

in
{ AwsVpnGatewayOptional = AwsVpnGatewayOptional
, AwsVpnGatewayRequired = AwsVpnGatewayRequired
, AwsVpnGateway = AwsVpnGateway
}
