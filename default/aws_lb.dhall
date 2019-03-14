
let accessLogs =
  { enabled = None Bool
  , prefix = None Text
  }

let subnetMapping =
  { allocation_id = None Text }

let awsLb =
  { enable_cross_zone_load_balancing = None Bool
  , enable_deletion_protection = None Bool
  , enable_http2 = None Bool
  , idle_timeout = None Natural
  , internal = None Bool
  , ip_address_type = None Text
  , load_balancer_type = None Text
  , name = None Text
  , name_prefix = None Text
  , security_groups = None (List Text)
  , subnets = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , access_logs = None (../dhall/aws_lb.dhall).AccessLogs
  , subnet_mapping = None (List (../dhall/aws_lb.dhall).SubnetMapping)
  }

in
{ awsLb = awsLb
, subnetMapping = subnetMapping
, accessLogs = accessLogs
}
