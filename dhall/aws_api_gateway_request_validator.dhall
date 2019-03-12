
let AwsApiGatewayRequestValidatorOptional =
  { validate_request_body : Optional Bool
  , validate_request_parameters : Optional Bool
  }

let AwsApiGatewayRequestValidatorRequired =
  { name : Text
  , rest_api_id : Text
  }
let AwsApiGatewayRequestValidator = AwsApiGatewayRequestValidatorOptional //\\ AwsApiGatewayRequestValidatorRequired

in
{ AwsApiGatewayRequestValidatorOptional = AwsApiGatewayRequestValidatorOptional
, AwsApiGatewayRequestValidatorRequired = AwsApiGatewayRequestValidatorRequired
, AwsApiGatewayRequestValidator = AwsApiGatewayRequestValidator
}
