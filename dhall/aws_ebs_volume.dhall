
let AwsEbsVolumeOptional =
  { encrypted: Optional Bool
  , iops: Optional Natural
  , kms_key_id: Optional Text
  , size: Optional Natural
  , snapshot_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , type: Optional Text
  }

let AwsEbsVolumeRequired =
  { availability_zone: Text }
let AwsEbsVolume = AwsEbsVolumeOptional //\\ AwsEbsVolumeRequired

in
{ AwsEbsVolumeOptional = AwsEbsVolumeOptional
, AwsEbsVolumeRequired = AwsEbsVolumeRequired
, AwsEbsVolume = AwsEbsVolume
}
