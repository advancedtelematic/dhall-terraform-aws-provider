
let EbsBlockDeviceOptional =
  { delete_on_termination: Optional Bool
  , iops: Optional Natural
  , snapshot_id: Optional Text
  , volume_size: Optional Natural
  , volume_type: Optional Text
  }

let EbsBlockDeviceRequired =
  { device_name: Text }
let EbsBlockDevice = EbsBlockDeviceOptional //\\ EbsBlockDeviceRequired

let EphemeralBlockDeviceOptional = {}

let EphemeralBlockDeviceRequired =
  { device_name: Text
  , virtual_name: Text
  }
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let RootBlockDeviceOptional =
  { delete_on_termination: Optional Bool
  , iops: Optional Natural
  , volume_size: Optional Natural
  , volume_type: Optional Text
  }

let RootBlockDeviceRequired = {}
let RootBlockDevice = RootBlockDeviceOptional //\\ RootBlockDeviceRequired

let AwsOpsworksInstanceOptional =
  { agent_version: Optional Text
  , ami_id: Optional Text
  , architecture: Optional Text
  , auto_scaling_type: Optional Text
  , availability_zone: Optional Text
  , created_at: Optional Text
  , delete_ebs: Optional Bool
  , delete_eip: Optional Bool
  , ebs_optimized: Optional Bool
  , ecs_cluster_arn: Optional Text
  , elastic_ip: Optional Text
  , hostname: Optional Text
  , infrastructure_class: Optional Text
  , install_updates_on_boot: Optional Bool
  , instance_profile_arn: Optional Text
  , instance_type: Optional Text
  , last_service_error_id: Optional Text
  , os: Optional Text
  , platform: Optional Text
  , private_dns: Optional Text
  , private_ip: Optional Text
  , public_dns: Optional Text
  , public_ip: Optional Text
  , registered_by: Optional Text
  , reported_agent_version: Optional Text
  , reported_os_family: Optional Text
  , reported_os_name: Optional Text
  , reported_os_version: Optional Text
  , root_device_type: Optional Text
  , root_device_volume_id: Optional Text
  , security_group_ids: Optional (List Text)
  , ssh_host_dsa_key_fingerprint: Optional Text
  , ssh_host_rsa_key_fingerprint: Optional Text
  , ssh_key_name: Optional Text
  , state: Optional Text
  , status: Optional Text
  , subnet_id: Optional Text
  , tenancy: Optional Text
  , virtualization_type: Optional Text
  , ebs_block_device: Optional (List EbsBlockDevice)
  , ephemeral_block_device: Optional (List EphemeralBlockDevice)
  , root_block_device: Optional (List RootBlockDevice)
  }

let AwsOpsworksInstanceRequired =
  { layer_ids: (List Text)
  , stack_id: Text
  }
let AwsOpsworksInstance = AwsOpsworksInstanceOptional //\\ AwsOpsworksInstanceRequired

in
{ AwsOpsworksInstanceOptional = AwsOpsworksInstanceOptional
, AwsOpsworksInstanceRequired = AwsOpsworksInstanceRequired
, AwsOpsworksInstance = AwsOpsworksInstance
, RootBlockDeviceOptional = RootBlockDeviceOptional
, RootBlockDeviceRequired = RootBlockDeviceRequired
, RootBlockDevice = RootBlockDevice
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
