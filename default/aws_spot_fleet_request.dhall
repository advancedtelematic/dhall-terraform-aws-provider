
let ebsBlockDevice =
  { delete_on_termination = None Bool
  , encrypted = None Bool
  , iops = None Natural
  , snapshot_id = None Text
  , volume_size = None Natural
  , volume_type = None Text
  }

let ephemeralBlockDevice = {}

let rootBlockDevice =
  { delete_on_termination = None Bool
  , iops = None Natural
  , volume_size = None Natural
  , volume_type = None Text
  }

let launchSpecification =
  { associate_public_ip_address = None Bool
  , availability_zone = None Text
  , ebs_optimized = None Bool
  , iam_instance_profile = None Text
  , iam_instance_profile_arn = None Text
  , key_name = None Text
  , monitoring = None Bool
  , placement_group = None Text
  , placement_tenancy = None Text
  , spot_price = None Text
  , subnet_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , user_data = None Text
  , vpc_security_group_ids = None (List Text)
  , weighted_capacity = None Text
  , ebs_block_device = None (List (../dhall/aws_spot_fleet_request.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_spot_fleet_request.dhall).EphemeralBlockDevice)
  , root_block_device = None (List (../dhall/aws_spot_fleet_request.dhall).RootBlockDevice)
  }

let awsSpotFleetRequest =
  { allocation_strategy = None Text
  , excess_capacity_termination_policy = None Text
  , fleet_type = None Text
  , instance_interruption_behaviour = None Text
  , instance_pools_to_use_count = None Natural
  , load_balancers = None (List Text)
  , replace_unhealthy_instances = None Bool
  , spot_price = None Text
  , target_group_arns = None (List Text)
  , terminate_instances_with_expiration = None Bool
  , valid_from = None Text
  , valid_until = None Text
  , wait_for_fulfillment = None Bool
  }

in
{ awsSpotFleetRequest = awsSpotFleetRequest
, launchSpecification = launchSpecification
, rootBlockDevice = rootBlockDevice
, ebsBlockDevice = ebsBlockDevice
}
