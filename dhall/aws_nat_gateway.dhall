
let AwsNatGatewayOptional =
  { network_interface_id: Optional Text
  , private_ip: Optional Text
  , public_ip: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsNatGatewayRequired =
  { allocation_id: Text
  , subnet_id: Text
  }
let AwsNatGateway = AwsNatGatewayOptional //\\ AwsNatGatewayRequired

in
{ AwsNatGatewayOptional = AwsNatGatewayOptional
, AwsNatGatewayRequired = AwsNatGatewayRequired
, AwsNatGateway = AwsNatGateway
}
