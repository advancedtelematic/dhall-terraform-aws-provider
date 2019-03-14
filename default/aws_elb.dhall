
let accessLogs =
  { bucket_prefix = None Text
  , enabled = None Bool
  , interval = None Natural
  }

let healthCheck = {}

let listener =
  { ssl_certificate_id = None Text }

let awsElb =
  { availability_zones = None (List Text)
  , connection_draining = None Bool
  , connection_draining_timeout = None Natural
  , cross_zone_load_balancing = None Bool
  , idle_timeout = None Natural
  , instances = None (List Text)
  , internal = None Bool
  , name = None Text
  , name_prefix = None Text
  , security_groups = None (List Text)
  , source_security_group = None Text
  , subnets = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , access_logs = None (../dhall/aws_elb.dhall).AccessLogs
  , health_check = None (../dhall/aws_elb.dhall).HealthCheck
  }

in
{ awsElb = awsElb
, listener = listener
, accessLogs = accessLogs
}
