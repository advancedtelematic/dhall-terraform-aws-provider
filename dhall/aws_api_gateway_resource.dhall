
let AwsApiGatewayResourceOptional =
  { path: Optional Text }

let AwsApiGatewayResourceRequired =
  { parent_id: Text
  , path_part: Text
  , rest_api_id: Text
  }
let AwsApiGatewayResource = AwsApiGatewayResourceOptional //\\ AwsApiGatewayResourceRequired

in
{ AwsApiGatewayResourceOptional = AwsApiGatewayResourceOptional
, AwsApiGatewayResourceRequired = AwsApiGatewayResourceRequired
, AwsApiGatewayResource = AwsApiGatewayResource
}
