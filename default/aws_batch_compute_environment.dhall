
let computeResources =
  { bid_percentage = None Natural
  , desired_vcpus = None Natural
  , ec2_key_pair = None Text
  , image_id = None Text
  , spot_iam_fleet_role = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

let awsBatchComputeEnvironment =
  { state = None Text
  , compute_resources = None (../dhall/aws_batch_compute_environment.dhall).ComputeResources
  }

in
{ awsBatchComputeEnvironment = awsBatchComputeEnvironment
, computeResources = computeResources
}
