
let ApiStagesOptional = {}

let ApiStagesRequired =
  { api_id: Text
  , stage: Text
  }
let ApiStages = ApiStagesOptional //\\ ApiStagesRequired

let QuotaSettingsOptional =
  { offset: Optional Natural }

let QuotaSettingsRequired =
  { limit: Natural
  , period: Text
  }
let QuotaSettings = QuotaSettingsOptional //\\ QuotaSettingsRequired

let ThrottleSettingsOptional =
  { burst_limit: Optional Natural
  , rate_limit: Optional Natural
  }

let ThrottleSettingsRequired = {}
let ThrottleSettings = ThrottleSettingsOptional //\\ ThrottleSettingsRequired

let AwsApiGatewayUsagePlanOptional =
  { description: Optional Text
  , product_code: Optional Text
  , api_stages: Optional (List ApiStages)
  , quota_settings: Optional QuotaSettings
  , throttle_settings: Optional ThrottleSettings
  }

let AwsApiGatewayUsagePlanRequired =
  { name: Text }
let AwsApiGatewayUsagePlan = AwsApiGatewayUsagePlanOptional //\\ AwsApiGatewayUsagePlanRequired

in
{ AwsApiGatewayUsagePlanOptional = AwsApiGatewayUsagePlanOptional
, AwsApiGatewayUsagePlanRequired = AwsApiGatewayUsagePlanRequired
, AwsApiGatewayUsagePlan = AwsApiGatewayUsagePlan
, ThrottleSettingsOptional = ThrottleSettingsOptional
, ThrottleSettingsRequired = ThrottleSettingsRequired
, ThrottleSettings = ThrottleSettings
, QuotaSettingsOptional = QuotaSettingsOptional
, QuotaSettingsRequired = QuotaSettingsRequired
, QuotaSettings = QuotaSettings
, ApiStages = ApiStages
}
