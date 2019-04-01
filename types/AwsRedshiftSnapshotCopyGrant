
let AwsRedshiftSnapshotCopyGrantOptional =
  { kms_key_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRedshiftSnapshotCopyGrantRequired =
  { snapshot_copy_grant_name : Text }
let AwsRedshiftSnapshotCopyGrant = AwsRedshiftSnapshotCopyGrantOptional //\\ AwsRedshiftSnapshotCopyGrantRequired

in
{ AwsRedshiftSnapshotCopyGrantOptional = AwsRedshiftSnapshotCopyGrantOptional
, AwsRedshiftSnapshotCopyGrantRequired = AwsRedshiftSnapshotCopyGrantRequired
, AwsRedshiftSnapshotCopyGrant = AwsRedshiftSnapshotCopyGrant
}
