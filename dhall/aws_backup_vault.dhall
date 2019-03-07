
let AwsBackupVaultOptional =
  { kms_key_arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsBackupVaultRequired =
  { name: Text }
let AwsBackupVault = AwsBackupVaultOptional //\\ AwsBackupVaultRequired

in
{ AwsBackupVaultOptional = AwsBackupVaultOptional
, AwsBackupVaultRequired = AwsBackupVaultRequired
, AwsBackupVault = AwsBackupVault
}
