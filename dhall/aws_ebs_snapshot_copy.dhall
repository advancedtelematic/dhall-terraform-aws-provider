
let AwsEbsSnapshotCopyOptional =
  { data_encryption_key_id: Optional Text
  , description: Optional Text
  , encrypted: Optional Bool
  , kms_key_id: Optional Text
  , owner_alias: Optional Text
  , owner_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , volume_id: Optional Text
  , volume_size: Optional Natural
  }

let AwsEbsSnapshotCopyRequired =
  { source_region: Text
  , source_snapshot_id: Text
  }
let AwsEbsSnapshotCopy = AwsEbsSnapshotCopyOptional //\\ AwsEbsSnapshotCopyRequired

in
{ AwsEbsSnapshotCopyOptional = AwsEbsSnapshotCopyOptional
, AwsEbsSnapshotCopyRequired = AwsEbsSnapshotCopyRequired
, AwsEbsSnapshotCopy = AwsEbsSnapshotCopy
}
