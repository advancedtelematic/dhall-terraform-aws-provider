
let CloudwatchEncryptionOptional =
  { cloudwatch_encryption_mode: Optional Text
  , kms_key_arn: Optional Text
  }

let CloudwatchEncryptionRequired = {}
let CloudwatchEncryption = CloudwatchEncryptionOptional //\\ CloudwatchEncryptionRequired

let JobBookmarksEncryptionOptional =
  { job_bookmarks_encryption_mode: Optional Text
  , kms_key_arn: Optional Text
  }

let JobBookmarksEncryptionRequired = {}
let JobBookmarksEncryption = JobBookmarksEncryptionOptional //\\ JobBookmarksEncryptionRequired

let S3EncryptionOptional =
  { kms_key_arn: Optional Text
  , s3_encryption_mode: Optional Text
  }

let S3EncryptionRequired = {}
let S3Encryption = S3EncryptionOptional //\\ S3EncryptionRequired

let EncryptionConfigurationOptional = {}

let EncryptionConfigurationRequired =
  { cloudwatch_encryption: CloudwatchEncryption
  , job_bookmarks_encryption: JobBookmarksEncryption
  , s3_encryption: S3Encryption
  }
let EncryptionConfiguration = EncryptionConfigurationOptional //\\ EncryptionConfigurationRequired

let AwsGlueSecurityConfigurationOptional = {}

let AwsGlueSecurityConfigurationRequired =
  { name: Text
  , encryption_configuration: EncryptionConfiguration
  }
let AwsGlueSecurityConfiguration = AwsGlueSecurityConfigurationOptional //\\ AwsGlueSecurityConfigurationRequired

in
{ AwsGlueSecurityConfiguration = AwsGlueSecurityConfiguration
, EncryptionConfiguration = EncryptionConfiguration
, S3EncryptionOptional = S3EncryptionOptional
, S3EncryptionRequired = S3EncryptionRequired
, S3Encryption = S3Encryption
, JobBookmarksEncryptionOptional = JobBookmarksEncryptionOptional
, JobBookmarksEncryptionRequired = JobBookmarksEncryptionRequired
, JobBookmarksEncryption = JobBookmarksEncryption
, CloudwatchEncryptionOptional = CloudwatchEncryptionOptional
, CloudwatchEncryptionRequired = CloudwatchEncryptionRequired
, CloudwatchEncryption = CloudwatchEncryption
}
