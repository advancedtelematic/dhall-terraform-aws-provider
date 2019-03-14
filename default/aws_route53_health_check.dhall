
let awsRoute53HealthCheck =
  { child_health_threshold = None Natural
  , child_healthchecks = None (List Text)
  , cloudwatch_alarm_name = None Text
  , cloudwatch_alarm_region = None Text
  , enable_sni = None Bool
  , failure_threshold = None Natural
  , fqdn = None Text
  , insufficient_data_health_status = None Text
  , invert_healthcheck = None Bool
  , ip_address = None Text
  , measure_latency = None Bool
  , port = None Natural
  , reference_name = None Text
  , regions = None (List Text)
  , request_interval = None Natural
  , resource_path = None Text
  , search_string = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsRoute53HealthCheck = awsRoute53HealthCheck
}
