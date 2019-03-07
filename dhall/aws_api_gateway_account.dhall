
let ThrottleSettingsOptional = {}

let ThrottleSettingsRequired = {}
let ThrottleSettings = ThrottleSettingsOptional //\\ ThrottleSettingsRequired

let AwsApiGatewayAccountOptional =
  { cloudwatch_role_arn: Optional Text
  , throttle_settings: Optional ThrottleSettings
  }

let AwsApiGatewayAccountRequired = {}
let AwsApiGatewayAccount = AwsApiGatewayAccountOptional //\\ AwsApiGatewayAccountRequired

in
{ AwsApiGatewayAccountOptional = AwsApiGatewayAccountOptional
, AwsApiGatewayAccountRequired = AwsApiGatewayAccountRequired
, AwsApiGatewayAccount = AwsApiGatewayAccount
, ThrottleSettings = ThrottleSettings
}
