
let HealthCheckOptional =
  { healthy_threshold: Optional Natural
  , interval: Optional Natural
  , matcher: Optional Text
  , path: Optional Text
  , port: Optional Text
  , protocol: Optional Text
  , timeout: Optional Natural
  , unhealthy_threshold: Optional Natural
  }

let HealthCheckRequired = {}
let HealthCheck = HealthCheckOptional //\\ HealthCheckRequired

let StickinessOptional =
  { cookie_duration: Optional Natural
  , enabled: Optional Bool
  }

let StickinessRequired =
  { type: Text }
let Stickiness = StickinessOptional //\\ StickinessRequired

let AwsLbTargetGroupOptional =
  { arn: Optional Text
  , arn_suffix: Optional Text
  , deregistration_delay: Optional Natural
  , name: Optional Text
  , name_prefix: Optional Text
  , port: Optional Natural
  , protocol: Optional Text
  , proxy_protocol_v2: Optional Bool
  , slow_start: Optional Natural
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , target_type: Optional Text
  , vpc_id: Optional Text
  , health_check: Optional HealthCheck
  , stickiness: Optional Stickiness
  }

let AwsLbTargetGroupRequired = {}
let AwsLbTargetGroup = AwsLbTargetGroupOptional //\\ AwsLbTargetGroupRequired

in
{ AwsLbTargetGroupOptional = AwsLbTargetGroupOptional
, AwsLbTargetGroupRequired = AwsLbTargetGroupRequired
, AwsLbTargetGroup = AwsLbTargetGroup
, StickinessOptional = StickinessOptional
, StickinessRequired = StickinessRequired
, Stickiness = Stickiness
, HealthCheckOptional = HealthCheckOptional
, HealthCheckRequired = HealthCheckRequired
, HealthCheck = HealthCheck
}
