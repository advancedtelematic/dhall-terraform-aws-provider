
let AwsGlacierVaultLockOptional =
  { ignore_deletion_error: Optional Bool }

let AwsGlacierVaultLockRequired =
  { complete_lock: Bool
  , policy: Text
  , vault_name: Text
  }
let AwsGlacierVaultLock = AwsGlacierVaultLockOptional //\\ AwsGlacierVaultLockRequired

in
{ AwsGlacierVaultLockOptional = AwsGlacierVaultLockOptional
, AwsGlacierVaultLockRequired = AwsGlacierVaultLockRequired
, AwsGlacierVaultLock = AwsGlacierVaultLock
}
