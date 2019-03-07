
let AwsApiGatewayResourceOptional = {}

let AwsApiGatewayResourceRequired =
  { parent_id: Text
  , path_part: Text
  , rest_api_id: Text
  }
let AwsApiGatewayResource = AwsApiGatewayResourceOptional //\\ AwsApiGatewayResourceRequired

in
{ AwsApiGatewayResource = AwsApiGatewayResource
}
