
let accessLogSettings = {}

let awsApiGatewayStage =
  { cache_cluster_enabled = None Bool
  , cache_cluster_size = None Text
  , client_certificate_id = None Text
  , description = None Text
  , documentation_version = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , variables = None (List { mapKey : Text, mapValue : Text })
  , xray_tracing_enabled = None Bool
  , access_log_settings = None (../dhall/aws_api_gateway_stage.dhall).AccessLogSettings
  }

in
{ awsApiGatewayStage = awsApiGatewayStage
}
