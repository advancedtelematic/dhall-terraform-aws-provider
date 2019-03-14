
let awsEbsSnapshotCopy =
  { description = None Text
  , encrypted = None Bool
  , kms_key_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsEbsSnapshotCopy = awsEbsSnapshotCopy
}
