
let awsApiGatewayGatewayResponse =
  { response_parameters = None (List { mapKey : Text, mapValue : Text })
  , response_templates = None (List { mapKey : Text, mapValue : Text })
  , status_code = None Text
  }

in
{ awsApiGatewayGatewayResponse = awsApiGatewayGatewayResponse
}
