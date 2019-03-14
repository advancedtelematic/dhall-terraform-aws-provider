
let cloudwatchEncryption =
  { cloudwatch_encryption_mode = None Text
  , kms_key_arn = None Text
  }

let jobBookmarksEncryption =
  { job_bookmarks_encryption_mode = None Text
  , kms_key_arn = None Text
  }

let s3Encryption =
  { kms_key_arn = None Text
  , s3_encryption_mode = None Text
  }

let encryptionConfiguration = {}

let awsGlueSecurityConfiguration = {}

in
{ s3Encryption = s3Encryption
, jobBookmarksEncryption = jobBookmarksEncryption
, cloudwatchEncryption = cloudwatchEncryption
}
