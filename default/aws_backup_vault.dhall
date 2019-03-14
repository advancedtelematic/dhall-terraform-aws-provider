
let awsBackupVault =
  { kms_key_arn = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsBackupVault = awsBackupVault
}
