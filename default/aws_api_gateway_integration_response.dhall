
let awsApiGatewayIntegrationResponse =
  { content_handling = None Text
  , response_parameters = None (List { mapKey : Text, mapValue : Text })
  , response_parameters_in_json = None Text
  , response_templates = None (List { mapKey : Text, mapValue : Text })
  , selection_pattern = None Text
  }

in
{ awsApiGatewayIntegrationResponse = awsApiGatewayIntegrationResponse
}
