
let healthCheck =
  { healthy_threshold = None Natural
  , interval = None Natural
  , matcher = None Text
  , path = None Text
  , port = None Text
  , protocol = None Text
  , timeout = None Natural
  , unhealthy_threshold = None Natural
  }

let stickiness =
  { cookie_duration = None Natural
  , enabled = None Bool
  }

let awsAlbTargetGroup =
  { deregistration_delay = None Natural
  , name = None Text
  , name_prefix = None Text
  , port = None Natural
  , protocol = None Text
  , proxy_protocol_v2 = None Bool
  , slow_start = None Natural
  , tags = None (List { mapKey : Text, mapValue : Text })
  , target_type = None Text
  , vpc_id = None Text
  , health_check = None (../dhall/aws_alb_target_group.dhall).HealthCheck
  , stickiness = None (../dhall/aws_alb_target_group.dhall).Stickiness
  }

in
{ awsAlbTargetGroup = awsAlbTargetGroup
, stickiness = stickiness
, healthCheck = healthCheck
}
