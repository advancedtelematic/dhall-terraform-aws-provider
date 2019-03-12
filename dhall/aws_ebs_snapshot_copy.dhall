
let AwsEbsSnapshotCopyOptional =
  { description : Optional Text
  , encrypted : Optional Bool
  , kms_key_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsEbsSnapshotCopyRequired =
  { source_region : Text
  , source_snapshot_id : Text
  }
let AwsEbsSnapshotCopy = AwsEbsSnapshotCopyOptional //\\ AwsEbsSnapshotCopyRequired

in
{ AwsEbsSnapshotCopyOptional = AwsEbsSnapshotCopyOptional
, AwsEbsSnapshotCopyRequired = AwsEbsSnapshotCopyRequired
, AwsEbsSnapshotCopy = AwsEbsSnapshotCopy
}
