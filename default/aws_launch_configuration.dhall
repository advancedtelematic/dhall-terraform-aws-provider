
let ebsBlockDevice =
  { delete_on_termination = None Bool
  , encrypted = None Bool
  , iops = None Natural
  , no_device = None Bool
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

let awsLaunchConfiguration =
  { associate_public_ip_address = None Bool
  , ebs_optimized = None Bool
  , enable_monitoring = None Bool
  , iam_instance_profile = None Text
  , key_name = None Text
  , name = None Text
  , name_prefix = None Text
  , placement_tenancy = None Text
  , security_groups = None (List Text)
  , spot_price = None Text
  , user_data = None Text
  , user_data_base64 = None Text
  , vpc_classic_link_id = None Text
  , vpc_classic_link_security_groups = None (List Text)
  , ebs_block_device = None (List (../dhall/aws_launch_configuration.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_launch_configuration.dhall).EphemeralBlockDevice)
  , root_block_device = None (../dhall/aws_launch_configuration.dhall).RootBlockDevice
  }

in
{ awsLaunchConfiguration = awsLaunchConfiguration
, rootBlockDevice = rootBlockDevice
, ebsBlockDevice = ebsBlockDevice
}
