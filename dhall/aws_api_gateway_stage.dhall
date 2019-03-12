
let AccessLogSettingsOptional = {}

let AccessLogSettingsRequired =
  { destination_arn : Text
  , format : Text
  }
let AccessLogSettings = AccessLogSettingsOptional //\\ AccessLogSettingsRequired

let AwsApiGatewayStageOptional =
  { cache_cluster_enabled : Optional Bool
  , cache_cluster_size : Optional Text
  , client_certificate_id : Optional Text
  , description : Optional Text
  , documentation_version : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , variables : Optional (List { mapKey : Text, mapValue : Text })
  , xray_tracing_enabled : Optional Bool
  , access_log_settings : Optional AccessLogSettings
  }

let AwsApiGatewayStageRequired =
  { deployment_id : Text
  , rest_api_id : Text
  , stage_name : Text
  }
let AwsApiGatewayStage = AwsApiGatewayStageOptional //\\ AwsApiGatewayStageRequired

in
{ AwsApiGatewayStageOptional = AwsApiGatewayStageOptional
, AwsApiGatewayStageRequired = AwsApiGatewayStageRequired
, AwsApiGatewayStage = AwsApiGatewayStage
, AccessLogSettings = AccessLogSettings
}
