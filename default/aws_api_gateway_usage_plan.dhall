
let apiStages = {}

let quotaSettings =
  { offset = None Natural }

let throttleSettings =
  { burst_limit = None Natural
  , rate_limit = None Natural
  }

let awsApiGatewayUsagePlan =
  { description = None Text
  , product_code = None Text
  , api_stages = None (List (../dhall/aws_api_gateway_usage_plan.dhall).ApiStages)
  , quota_settings = None (../dhall/aws_api_gateway_usage_plan.dhall).QuotaSettings
  , throttle_settings = None (../dhall/aws_api_gateway_usage_plan.dhall).ThrottleSettings
  }

in
{ awsApiGatewayUsagePlan = awsApiGatewayUsagePlan
, throttleSettings = throttleSettings
, quotaSettings = quotaSettings
}
