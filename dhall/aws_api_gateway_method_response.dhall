
let AwsApiGatewayMethodResponseOptional =
  { response_models : Optional (List { mapKey : Text, mapValue : Text })
  , response_parameters : Optional (List { mapKey : Text, mapValue : Bool })
  , response_parameters_in_json : Optional Text
  }

let AwsApiGatewayMethodResponseRequired =
  { http_method : Text
  , resource_id : Text
  , rest_api_id : Text
  , status_code : Text
  }
let AwsApiGatewayMethodResponse = AwsApiGatewayMethodResponseOptional //\\ AwsApiGatewayMethodResponseRequired

in
{ AwsApiGatewayMethodResponseOptional = AwsApiGatewayMethodResponseOptional
, AwsApiGatewayMethodResponseRequired = AwsApiGatewayMethodResponseRequired
, AwsApiGatewayMethodResponse = AwsApiGatewayMethodResponse
}
