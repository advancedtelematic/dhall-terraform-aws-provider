
let creditSpecification =
  { cpu_credits = None Text }

let ebsBlockDevice =
  { delete_on_termination = None Bool
  , encrypted = None Bool
  , iops = None Natural
  , snapshot_id = None Text
  , volume_size = None Natural
  , volume_type = None Text
  }

let ephemeralBlockDevice =
  { no_device = None Bool
  , virtual_name = None Text
  }

let networkInterface =
  { delete_on_termination = None Bool }

let rootBlockDevice =
  { delete_on_termination = None Bool
  , iops = None Natural
  , volume_size = None Natural
  , volume_type = None Text
  }

let awsInstance =
  { associate_public_ip_address = None Bool
  , availability_zone = None Text
  , cpu_core_count = None Natural
  , cpu_threads_per_core = None Natural
  , disable_api_termination = None Bool
  , ebs_optimized = None Bool
  , get_password_data = None Bool
  , host_id = None Text
  , iam_instance_profile = None Text
  , instance_initiated_shutdown_behavior = None Text
  , ipv6_address_count = None Natural
  , ipv6_addresses = None (List Text)
  , key_name = None Text
  , monitoring = None Bool
  , placement_group = None Text
  , private_ip = None Text
  , security_groups = None (List Text)
  , source_dest_check = None Bool
  , subnet_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , tenancy = None Text
  , user_data = None Text
  , user_data_base64 = None Text
  , volume_tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids = None (List Text)
  , credit_specification = None (../dhall/aws_instance.dhall).CreditSpecification
  , ebs_block_device = None (List (../dhall/aws_instance.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_instance.dhall).EphemeralBlockDevice)
  , network_interface = None (List (../dhall/aws_instance.dhall).NetworkInterface)
  , root_block_device = None (../dhall/aws_instance.dhall).RootBlockDevice
  }

in
{ awsInstance = awsInstance
, rootBlockDevice = rootBlockDevice
, networkInterface = networkInterface
, ephemeralBlockDevice = ephemeralBlockDevice
, ebsBlockDevice = ebsBlockDevice
, creditSpecification = creditSpecification
}
