
let EbsBlockDeviceOptional =
  { delete_on_termination: Optional Bool
  , device_name: Optional Text
  , encrypted: Optional Bool
  , iops: Optional Natural
  , snapshot_id: Optional Text
  , volume_size: Optional Natural
  , volume_type: Optional Text
  }

let EbsBlockDeviceRequired = {}
let EbsBlockDevice = EbsBlockDeviceOptional //\\ EbsBlockDeviceRequired

let EphemeralBlockDeviceOptional =
  { device_name: Optional Text
  , virtual_name: Optional Text
  }

let EphemeralBlockDeviceRequired = {}
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let AwsAmiFromInstanceOptional =
  { architecture: Optional Text
  , description: Optional Text
  , ena_support: Optional Bool
  , image_location: Optional Text
  , kernel_id: Optional Text
  , manage_ebs_snapshots: Optional Bool
  , ramdisk_id: Optional Text
  , root_device_name: Optional Text
  , root_snapshot_id: Optional Text
  , snapshot_without_reboot: Optional Bool
  , sriov_net_support: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , virtualization_type: Optional Text
  , ebs_block_device: Optional (List EbsBlockDevice)
  , ephemeral_block_device: Optional (List EphemeralBlockDevice)
  }

let AwsAmiFromInstanceRequired =
  { name: Text
  , source_instance_id: Text
  }
let AwsAmiFromInstance = AwsAmiFromInstanceOptional //\\ AwsAmiFromInstanceRequired

in
{ AwsAmiFromInstanceOptional = AwsAmiFromInstanceOptional
, AwsAmiFromInstanceRequired = AwsAmiFromInstanceRequired
, AwsAmiFromInstance = AwsAmiFromInstance
, EphemeralBlockDeviceOptional = EphemeralBlockDeviceOptional
, EphemeralBlockDeviceRequired = EphemeralBlockDeviceRequired
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
