
let attributes =
  { flow_logs_enabled = None Bool
  , flow_logs_s3_bucket = None Text
  , flow_logs_s3_prefix = None Text
  }

let ipSets = {}

let awsGlobalacceleratorAccelerator =
  { enabled = None Bool
  , ip_address_type = None Text
  , attributes = None (../dhall/aws_globalaccelerator_accelerator.dhall).Attributes
  , ip_sets = None (List (../dhall/aws_globalaccelerator_accelerator.dhall).IpSets)
  }

in
{ awsGlobalacceleratorAccelerator = awsGlobalacceleratorAccelerator
, attributes = attributes
}
