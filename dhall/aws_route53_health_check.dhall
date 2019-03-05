
let AwsRoute53HealthCheckOptional =
  { child_health_threshold: Optional Natural
  , child_healthchecks: Optional (List Text)
  , cloudwatch_alarm_name: Optional Text
  , cloudwatch_alarm_region: Optional Text
  , enable_sni: Optional Bool
  , failure_threshold: Optional Natural
  , fqdn: Optional Text
  , insufficient_data_health_status: Optional Text
  , invert_healthcheck: Optional Bool
  , ip_address: Optional Text
  , measure_latency: Optional Bool
  , port: Optional Natural
  , reference_name: Optional Text
  , regions: Optional (List Text)
  , request_interval: Optional Natural
  , resource_path: Optional Text
  , search_string: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRoute53HealthCheckRequired =
  { type: Text }
let AwsRoute53HealthCheck = AwsRoute53HealthCheckOptional //\\ AwsRoute53HealthCheckRequired

in
{ AwsRoute53HealthCheckOptional = AwsRoute53HealthCheckOptional
, AwsRoute53HealthCheckRequired = AwsRoute53HealthCheckRequired
, AwsRoute53HealthCheck = AwsRoute53HealthCheck
}
