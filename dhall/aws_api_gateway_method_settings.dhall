
let SettingsOptional =
  { cache_data_encrypted : Optional Bool
  , cache_ttl_in_seconds : Optional Natural
  , caching_enabled : Optional Bool
  , data_trace_enabled : Optional Bool
  , logging_level : Optional Text
  , metrics_enabled : Optional Bool
  , require_authorization_for_cache_control : Optional Bool
  , throttling_burst_limit : Optional Natural
  , throttling_rate_limit : Optional Natural
  , unauthorized_cache_control_header_strategy : Optional Text
  }

let SettingsRequired = {}
let Settings = SettingsOptional //\\ SettingsRequired

let AwsApiGatewayMethodSettingsOptional = {}

let AwsApiGatewayMethodSettingsRequired =
  { method_path : Text
  , rest_api_id : Text
  , stage_name : Text
  , settings : Settings
  }
let AwsApiGatewayMethodSettings = AwsApiGatewayMethodSettingsOptional //\\ AwsApiGatewayMethodSettingsRequired

in
{ AwsApiGatewayMethodSettings = AwsApiGatewayMethodSettings
, SettingsOptional = SettingsOptional
, SettingsRequired = SettingsRequired
, Settings = Settings
}
