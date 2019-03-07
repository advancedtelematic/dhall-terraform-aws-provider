
let AccessLogsOptional =
  { bucket_prefix: Optional Text
  , enabled: Optional Bool
  , interval: Optional Natural
  }

let AccessLogsRequired =
  { bucket: Text }
let AccessLogs = AccessLogsOptional //\\ AccessLogsRequired

let HealthCheckOptional = {}

let HealthCheckRequired =
  { healthy_threshold: Natural
  , interval: Natural
  , target: Text
  , timeout: Natural
  , unhealthy_threshold: Natural
  }
let HealthCheck = HealthCheckOptional //\\ HealthCheckRequired

let ListenerOptional =
  { ssl_certificate_id: Optional Text }

let ListenerRequired =
  { instance_port: Natural
  , instance_protocol: Text
  , lb_port: Natural
  , lb_protocol: Text
  }
let Listener = ListenerOptional //\\ ListenerRequired

let AwsElbOptional =
  { availability_zones: Optional (List Text)
  , connection_draining: Optional Bool
  , connection_draining_timeout: Optional Natural
  , cross_zone_load_balancing: Optional Bool
  , idle_timeout: Optional Natural
  , instances: Optional (List Text)
  , internal: Optional Bool
  , name: Optional Text
  , name_prefix: Optional Text
  , security_groups: Optional (List Text)
  , source_security_group: Optional Text
  , subnets: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , access_logs: Optional AccessLogs
  , health_check: Optional HealthCheck
  }

let AwsElbRequired =
  { listener: List Listener }
let AwsElb = AwsElbOptional //\\ AwsElbRequired

in
{ AwsElbOptional = AwsElbOptional
, AwsElbRequired = AwsElbRequired
, AwsElb = AwsElb
, ListenerOptional = ListenerOptional
, ListenerRequired = ListenerRequired
, Listener = Listener
, HealthCheck = HealthCheck
, AccessLogsOptional = AccessLogsOptional
, AccessLogsRequired = AccessLogsRequired
, AccessLogs = AccessLogs
}
