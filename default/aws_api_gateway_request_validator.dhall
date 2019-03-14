
let awsApiGatewayRequestValidator =
  { validate_request_body = None Bool
  , validate_request_parameters = None Bool
  }

in
{ awsApiGatewayRequestValidator = awsApiGatewayRequestValidator
}
