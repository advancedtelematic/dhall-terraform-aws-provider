
let EbsBlockDeviceOptional = {}

let EbsBlockDeviceRequired = {}
let EbsBlockDevice = EbsBlockDeviceOptional //\\ EbsBlockDeviceRequired

let EphemeralBlockDeviceOptional = {}

let EphemeralBlockDeviceRequired = {}
let EphemeralBlockDevice = EphemeralBlockDeviceOptional //\\ EphemeralBlockDeviceRequired

let AwsAmiFromInstanceOptional =
  { description : Optional Text
  , snapshot_without_reboot : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , ebs_block_device : Optional (List EbsBlockDevice)
  , ephemeral_block_device : Optional (List EphemeralBlockDevice)
  }

let AwsAmiFromInstanceRequired =
  { name : Text
  , source_instance_id : Text
  }
let AwsAmiFromInstance = AwsAmiFromInstanceOptional //\\ AwsAmiFromInstanceRequired

in
{ AwsAmiFromInstanceOptional = AwsAmiFromInstanceOptional
, AwsAmiFromInstanceRequired = AwsAmiFromInstanceRequired
, AwsAmiFromInstance = AwsAmiFromInstance
, EphemeralBlockDevice = EphemeralBlockDevice
, EbsBlockDevice = EbsBlockDevice
}
