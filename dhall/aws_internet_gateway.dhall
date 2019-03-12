
let AwsInternetGatewayOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id : Optional Text
  }

let AwsInternetGatewayRequired = {}
let AwsInternetGateway = AwsInternetGatewayOptional //\\ AwsInternetGatewayRequired

in
{ AwsInternetGatewayOptional = AwsInternetGatewayOptional
, AwsInternetGatewayRequired = AwsInternetGatewayRequired
, AwsInternetGateway = AwsInternetGateway
}
