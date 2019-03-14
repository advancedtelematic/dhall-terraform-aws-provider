
let stageKey = {}

let awsApiGatewayApiKey =
  { description = None Text
  , enabled = None Bool
  , value = None Text
  , stage_key = None (List (../dhall/aws_api_gateway_api_key.dhall).StageKey)
  }

in
{ awsApiGatewayApiKey = awsApiGatewayApiKey
}
