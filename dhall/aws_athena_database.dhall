
let EncryptionConfigurationOptional =
  { kms_key: Optional Text }

let EncryptionConfigurationRequired =
  { encryption_option: Text }
let EncryptionConfiguration = EncryptionConfigurationOptional //\\ EncryptionConfigurationRequired

let AwsAthenaDatabaseOptional =
  { force_destroy: Optional Bool
  , encryption_configuration: Optional EncryptionConfiguration
  }

let AwsAthenaDatabaseRequired =
  { bucket: Text
  , name: Text
  }
let AwsAthenaDatabase = AwsAthenaDatabaseOptional //\\ AwsAthenaDatabaseRequired

in
{ AwsAthenaDatabaseOptional = AwsAthenaDatabaseOptional
, AwsAthenaDatabaseRequired = AwsAthenaDatabaseRequired
, AwsAthenaDatabase = AwsAthenaDatabase
, EncryptionConfigurationOptional = EncryptionConfigurationOptional
, EncryptionConfigurationRequired = EncryptionConfigurationRequired
, EncryptionConfiguration = EncryptionConfiguration
}
