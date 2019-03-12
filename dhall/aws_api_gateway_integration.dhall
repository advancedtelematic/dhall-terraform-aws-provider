
let AwsApiGatewayIntegrationOptional =
  { cache_key_parameters : Optional (List Text)
  , cache_namespace : Optional Text
  , connection_id : Optional Text
  , connection_type : Optional Text
  , content_handling : Optional Text
  , credentials : Optional Text
  , integration_http_method : Optional Text
  , passthrough_behavior : Optional Text
  , request_parameters : Optional (List { mapKey : Text, mapValue : Text })
  , request_parameters_in_json : Optional Text
  , request_templates : Optional (List { mapKey : Text, mapValue : Text })
  , timeout_milliseconds : Optional Natural
  , uri : Optional Text
  }

let AwsApiGatewayIntegrationRequired =
  { http_method : Text
  , resource_id : Text
  , rest_api_id : Text
  , type : Text
  }
let AwsApiGatewayIntegration = AwsApiGatewayIntegrationOptional //\\ AwsApiGatewayIntegrationRequired

in
{ AwsApiGatewayIntegrationOptional = AwsApiGatewayIntegrationOptional
, AwsApiGatewayIntegrationRequired = AwsApiGatewayIntegrationRequired
, AwsApiGatewayIntegration = AwsApiGatewayIntegration
}
