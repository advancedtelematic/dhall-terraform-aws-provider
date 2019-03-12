
let EbsBlockDeviceOptional =
  { delete_on_termination : Optional Bool
  , encrypted : Optional Bool
  , iops : Optional Natural
  , no_device : Optional Bool
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

let AwsLaunchConfigurationOptional =
  { associate_public_ip_address : Optional Bool
  , ebs_optimized : Optional Bool
  , enable_monitoring : Optional Bool
  , iam_instance_profile : Optional Text
  , key_name : Optional Text
  , name : Optional Text
  , name_prefix : Optional Text
  , placement_tenancy : Optional Text
  , security_groups : Optional (List Text)
  , spot_price : Optional Text
  , user_data : Optional Text
  , user_data_base64 : Optional Text
  , vpc_classic_link_id : Optional Text
  , vpc_classic_link_security_groups : Optional (List Text)
  , ebs_block_device : Optional (List EbsBlockDevice)
  , ephemeral_block_device : Optional (List EphemeralBlockDevice)
  , root_block_device : Optional RootBlockDevice
  }

let AwsLaunchConfigurationRequired =
  { image_id : Text
  , instance_type : Text
  }
let AwsLaunchConfiguration = AwsLaunchConfigurationOptional //\\ AwsLaunchConfigurationRequired

in
{ AwsLaunchConfigurationOptional = AwsLaunchConfigurationOptional
, AwsLaunchConfigurationRequired = AwsLaunchConfigurationRequired
, AwsLaunchConfiguration = AwsLaunchConfiguration
, RootBlockDeviceOptional = RootBlockDeviceOptional
, RootBlockDeviceRequired = RootBlockDeviceRequired
, RootBlockDevice = RootBlockDevice
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
