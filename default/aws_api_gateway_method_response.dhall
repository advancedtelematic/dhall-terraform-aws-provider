
let awsApiGatewayMethodResponse =
  { response_models = None (List { mapKey : Text, mapValue : Text })
  , response_parameters = None (List { mapKey : Text, mapValue : Bool })
  , response_parameters_in_json = None Text
  }

in
{ awsApiGatewayMethodResponse = awsApiGatewayMethodResponse
}
