
let AwsNatGatewayOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text }) }

let AwsNatGatewayRequired =
  { allocation_id : Text
  , subnet_id : Text
  }
let AwsNatGateway = AwsNatGatewayOptional //\\ AwsNatGatewayRequired

in
{ AwsNatGatewayOptional = AwsNatGatewayOptional
, AwsNatGatewayRequired = AwsNatGatewayRequired
, AwsNatGateway = AwsNatGateway
}
