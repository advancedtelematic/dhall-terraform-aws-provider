
let AwsApiGatewayIntegrationResponseOptional =
  { content_handling : Optional Text
  , response_parameters : Optional (List { mapKey : Text, mapValue : Text })
  , response_parameters_in_json : Optional Text
  , response_templates : Optional (List { mapKey : Text, mapValue : Text })
  , selection_pattern : Optional Text
  }

let AwsApiGatewayIntegrationResponseRequired =
  { http_method : Text
  , resource_id : Text
  , rest_api_id : Text
  , status_code : Text
  }
let AwsApiGatewayIntegrationResponse = AwsApiGatewayIntegrationResponseOptional //\\ AwsApiGatewayIntegrationResponseRequired

in
{ AwsApiGatewayIntegrationResponseOptional = AwsApiGatewayIntegrationResponseOptional
, AwsApiGatewayIntegrationResponseRequired = AwsApiGatewayIntegrationResponseRequired
, AwsApiGatewayIntegrationResponse = AwsApiGatewayIntegrationResponse
}
