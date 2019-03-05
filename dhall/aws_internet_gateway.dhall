
let AwsInternetGatewayOptional =
  { owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id: Optional Text
  }

let AwsInternetGatewayRequired = {}
let AwsInternetGateway = AwsInternetGatewayOptional //\\ AwsInternetGatewayRequired

in
{ AwsInternetGatewayOptional = AwsInternetGatewayOptional
, AwsInternetGatewayRequired = AwsInternetGatewayRequired
, AwsInternetGateway = AwsInternetGateway
}
