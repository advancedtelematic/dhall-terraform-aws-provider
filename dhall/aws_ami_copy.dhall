
let EbsBlockDeviceOptional = {}

let EbsBlockDeviceRequired = {}
let EbsBlockDevice = EbsBlockDeviceOptional //\\ EbsBlockDeviceRequired

let EphemeralBlockDeviceOptional = {}

let EphemeralBlockDeviceRequired = {}
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let AwsAmiCopyOptional =
  { description : Optional Text
  , encrypted : Optional Bool
  , kms_key_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , ebs_block_device : Optional (List EbsBlockDevice)
  , ephemeral_block_device : Optional (List EphemeralBlockDevice)
  }

let AwsAmiCopyRequired =
  { name : Text
  , source_ami_id : Text
  , source_ami_region : Text
  }
let AwsAmiCopy = AwsAmiCopyOptional //\\ AwsAmiCopyRequired

in
{ AwsAmiCopyOptional = AwsAmiCopyOptional
, AwsAmiCopyRequired = AwsAmiCopyRequired
, AwsAmiCopy = AwsAmiCopy
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDevice = EbsBlockDevice
}
