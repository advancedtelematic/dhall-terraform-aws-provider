
let AwsApiGatewayMethodOptional =
  { api_key_required: Optional Bool
  , authorization_scopes: Optional (List Text)
  , authorizer_id: Optional Text
  , request_models: Optional (List { mapKey : Text, mapValue : Text })
  , request_parameters: Optional (List { mapKey : Text, mapValue : Bool })
  , request_parameters_in_json: Optional Text
  , request_validator_id: Optional Text
  }

let AwsApiGatewayMethodRequired =
  { authorization: Text
  , http_method: Text
  , resource_id: Text
  , rest_api_id: Text
  }
let AwsApiGatewayMethod = AwsApiGatewayMethodOptional //\\ AwsApiGatewayMethodRequired

in
{ AwsApiGatewayMethodOptional = AwsApiGatewayMethodOptional
, AwsApiGatewayMethodRequired = AwsApiGatewayMethodRequired
, AwsApiGatewayMethod = AwsApiGatewayMethod
}
