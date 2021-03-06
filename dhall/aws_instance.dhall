
let CreditSpecificationOptional =
  { cpu_credits : Optional Text }

let CreditSpecificationRequired = {}
let CreditSpecification = CreditSpecificationOptional //\\ CreditSpecificationRequired

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

let EphemeralBlockDeviceOptional =
  { no_device : Optional Bool
  , virtual_name : Optional Text
  }

let EphemeralBlockDeviceRequired =
  { device_name : Text }
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let NetworkInterfaceOptional =
  { delete_on_termination : Optional Bool }

let NetworkInterfaceRequired =
  { device_index : Natural
  , network_interface_id : Text
  }
let NetworkInterface = NetworkInterfaceOptional //\\ NetworkInterfaceRequired

let RootBlockDeviceOptional =
  { delete_on_termination : Optional Bool
  , iops : Optional Natural
  , volume_size : Optional Natural
  , volume_type : Optional Text
  }

let RootBlockDeviceRequired = {}
let RootBlockDevice = RootBlockDeviceOptional //\\ RootBlockDeviceRequired

let AwsInstanceOptional =
  { associate_public_ip_address : Optional Bool
  , availability_zone : Optional Text
  , cpu_core_count : Optional Natural
  , cpu_threads_per_core : Optional Natural
  , disable_api_termination : Optional Bool
  , ebs_optimized : Optional Bool
  , get_password_data : Optional Bool
  , host_id : Optional Text
  , iam_instance_profile : Optional Text
  , instance_initiated_shutdown_behavior : Optional Text
  , ipv6_address_count : Optional Natural
  , ipv6_addresses : Optional (List Text)
  , key_name : Optional Text
  , monitoring : Optional Bool
  , placement_group : Optional Text
  , private_ip : Optional Text
  , security_groups : Optional (List Text)
  , source_dest_check : Optional Bool
  , subnet_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , tenancy : Optional Text
  , user_data : Optional Text
  , user_data_base64 : Optional Text
  , volume_tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids : Optional (List Text)
  , credit_specification : Optional CreditSpecification
  , ebs_block_device : Optional (List EbsBlockDevice)
  , ephemeral_block_device : Optional (List EphemeralBlockDevice)
  , network_interface : Optional (List NetworkInterface)
  , root_block_device : Optional RootBlockDevice
  }

let AwsInstanceRequired =
  { ami : Text
  , instance_type : Text
  }
let AwsInstance = AwsInstanceOptional //\\ AwsInstanceRequired

in
{ AwsInstanceOptional = AwsInstanceOptional
, AwsInstanceRequired = AwsInstanceRequired
, AwsInstance = AwsInstance
, RootBlockDeviceOptional = RootBlockDeviceOptional
, RootBlockDeviceRequired = RootBlockDeviceRequired
, RootBlockDevice = RootBlockDevice
, NetworkInterfaceOptional = NetworkInterfaceOptional
, NetworkInterfaceRequired = NetworkInterfaceRequired
, NetworkInterface = NetworkInterface
, EphemeralBlockDeviceOptional = EphemeralBlockDeviceOptional
, EphemeralBlockDeviceRequired = EphemeralBlockDeviceRequired
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
, CreditSpecificationOptional = CreditSpecificationOptional
, CreditSpecificationRequired = CreditSpecificationRequired
, CreditSpecification = CreditSpecification
}
