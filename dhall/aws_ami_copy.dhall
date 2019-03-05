
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

let AwsAmiCopyOptional =
  { architecture: Optional Text
  , description: Optional Text
  , ena_support: Optional Bool
  , encrypted: Optional Bool
  , image_location: Optional Text
  , kernel_id: Optional Text
  , kms_key_id: Optional Text
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

let AwsAmiCopyRequired =
  { name: Text
  , source_ami_id: Text
  , source_ami_region: Text
  }
let AwsAmiCopy = AwsAmiCopyOptional //\\ AwsAmiCopyRequired

in
{ AwsAmiCopyOptional = AwsAmiCopyOptional
, AwsAmiCopyRequired = AwsAmiCopyRequired
, AwsAmiCopy = AwsAmiCopy
, EphemeralBlockDeviceOptional = EphemeralBlockDeviceOptional
, EphemeralBlockDeviceRequired = EphemeralBlockDeviceRequired
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDeviceOptional = EbsBlockDeviceOptional
, EbsBlockDeviceRequired = EbsBlockDeviceRequired
, EbsBlockDevice = EbsBlockDevice
}
