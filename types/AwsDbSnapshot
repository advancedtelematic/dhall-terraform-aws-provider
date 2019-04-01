
let AwsDbSnapshotOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text }) }

let AwsDbSnapshotRequired =
  { db_instance_identifier : Text
  , db_snapshot_identifier : Text
  }
let AwsDbSnapshot = AwsDbSnapshotOptional //\\ AwsDbSnapshotRequired

in
{ AwsDbSnapshotOptional = AwsDbSnapshotOptional
, AwsDbSnapshotRequired = AwsDbSnapshotRequired
, AwsDbSnapshot = AwsDbSnapshot
}
