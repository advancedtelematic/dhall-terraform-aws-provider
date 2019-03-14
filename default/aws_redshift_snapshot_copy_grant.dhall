
let awsRedshiftSnapshotCopyGrant =
  { kms_key_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsRedshiftSnapshotCopyGrant = awsRedshiftSnapshotCopyGrant
}
