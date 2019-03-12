
let EbsBlockDeviceOptional =
  { delete_on_termination : Optional Bool
  , encrypted : Optional Bool
  , iops : Optional Natural
  , snapshot_id : Optional Text
  , volume_size : Optional Natural
  , volume_type : Optional Text
  }

let EbsBlockDeviceRequired =
  { device_name : Text }
let EbsBlockDevice = EbsBlockDeviceOptional //\\ EbsBlockDeviceRequired

let EphemeralBlockDeviceOptional = {}

let EphemeralBlockDeviceRequired =
  { device_name : Text
  , virtual_name : Text
  }
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let RootBlockDeviceOptional =
  { delete_on_termination : Optional Bool
  , iops : Optional Natural
  , volume_size : Optional Natural
  , volume_type : Optional Text
  }

let RootBlockDeviceRequired = {}
let RootBlockDevice = RootBlockDeviceOptional //\\ RootBlockDeviceRequired

let LaunchSpecificationOptional =
  { associate_public_ip_address : Optional Bool
  , availability_zone : Optional Text
  , ebs_optimized : Optional Bool
  , iam_instance_profile : Optional Text
  , iam_instance_profile_arn : Optional Text
  , key_name : Optional Text
  , monitoring : Optional Bool
  , placement_group : Optional Text
  , placement_tenancy : Optional Text
  , spot_price : Optional Text
  , subnet_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , user_data : Optional Text
  , vpc_security_group_ids : Optional (List Text)
  , weighted_capacity : Optional Text
  , ebs_block_device : Optional (List EbsBlockDevice)
  , ephemeral_block_device : Optional (List EphemeralBlockDevice)
  , root_block_device : Optional (List RootBlockDevice)
  }

let LaunchSpecificationRequired =
  { ami : Text
  , instance_type : Text
  }
let LaunchSpecification = LaunchSpecificationOptional //\\ LaunchSpecificationRequired

let AwsSpotFleetRequestOptional =
  { allocation_strategy : Optional Text
  , excess_capacity_termination_policy : Optional Text
  , fleet_type : Optional Text
  , instance_interruption_behaviour : Optional Text
  , instance_pools_to_use_count : Optional Natural
  , load_balancers : Optional (List Text)
  , replace_unhealthy_instances : Optional Bool
  , spot_price : Optional Text
  , target_group_arns : Optional (List Text)
  , terminate_instances_with_expiration : Optional Bool
  , valid_from : Optional Text
  , valid_until : Optional Text
  , wait_for_fulfillment : Optional Bool
  }

let AwsSpotFleetRequestRequired =
  { iam_fleet_role : Text
  , target_capacity : Natural
  , launch_specification : List LaunchSpecification
  }
let AwsSpotFleetRequest = AwsSpotFleetRequestOptional //\\ AwsSpotFleetRequestRequired

in
{ AwsSpotFleetRequestOptional = AwsSpotFleetRequestOptional
, AwsSpotFleetRequestRequired = AwsSpotFleetRequestRequired
, AwsSpotFleetRequest = AwsSpotFleetRequest
, LaunchSpecificationOptional = LaunchSpecificationOptional
, LaunchSpecificationRequired = LaunchSpecificationRequired
, LaunchSpecification = LaunchSpecification
, RootBlockDeviceOptional = RootBlockDeviceOptional
, RootBlockDeviceRequired = RootBlockDeviceRequired
, RootBlockDevice = RootBlockDevice
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
