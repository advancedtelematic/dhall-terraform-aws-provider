
let EbsBlockDeviceOptional =
  { delete_on_termination: Optional Bool
  , encrypted: Optional Bool
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

let AwsAmiOptional =
  { architecture: Optional Text
  , description: Optional Text
  , ena_support: Optional Bool
  , image_location: Optional Text
  , kernel_id: Optional Text
  , manage_ebs_snapshots: Optional Bool
  , ramdisk_id: Optional Text
  , root_device_name: Optional Text
  , root_snapshot_id: Optional Text
  , sriov_net_support: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , virtualization_type: Optional Text
  , ebs_block_device: Optional (List EbsBlockDevice)
  , ephemeral_block_device: Optional (List EphemeralBlockDevice)
  }

let AwsAmiRequired =
  { name: Text }
let AwsAmi = AwsAmiOptional //\\ AwsAmiRequired

in
{ AwsAmiOptional = AwsAmiOptional
, AwsAmiRequired = AwsAmiRequired
, AwsAmi = AwsAmi
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
