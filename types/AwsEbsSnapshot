
let AwsEbsSnapshotOptional =
  { description : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsEbsSnapshotRequired =
  { volume_id : Text }
let AwsEbsSnapshot = AwsEbsSnapshotOptional //\\ AwsEbsSnapshotRequired

in
{ AwsEbsSnapshotOptional = AwsEbsSnapshotOptional
, AwsEbsSnapshotRequired = AwsEbsSnapshotRequired
, AwsEbsSnapshot = AwsEbsSnapshot
}
