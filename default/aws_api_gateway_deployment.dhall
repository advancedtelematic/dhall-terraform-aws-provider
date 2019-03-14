
let awsApiGatewayDeployment =
  { description = None Text
  , stage_description = None Text
  , variables = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsApiGatewayDeployment = awsApiGatewayDeployment
}
