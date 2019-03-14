
let throttleSettings = {}

let awsApiGatewayAccount =
  { cloudwatch_role_arn = None Text
  , throttle_settings = None (../dhall/aws_api_gateway_account.dhall).ThrottleSettings
  }

in
{ awsApiGatewayAccount = awsApiGatewayAccount
}
