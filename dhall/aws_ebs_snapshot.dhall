
let AwsEbsSnapshotOptional =
  { data_encryption_key_id: Optional Text
  , description: Optional Text
  , encrypted: Optional Bool
  , kms_key_id: Optional Text
  , owner_alias: Optional Text
  , owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , volume_size: Optional Natural
  }

let AwsEbsSnapshotRequired =
  { volume_id: Text }
let AwsEbsSnapshot = AwsEbsSnapshotOptional //\\ AwsEbsSnapshotRequired

in
{ AwsEbsSnapshotOptional = AwsEbsSnapshotOptional
, AwsEbsSnapshotRequired = AwsEbsSnapshotRequired
, AwsEbsSnapshot = AwsEbsSnapshot
}
