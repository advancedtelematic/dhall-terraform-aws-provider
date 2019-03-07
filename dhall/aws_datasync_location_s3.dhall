
let S3ConfigOptional = {}

let S3ConfigRequired =
  { bucket_access_role_arn: Text }
let S3Config = S3ConfigOptional //\\ S3ConfigRequired

let AwsDatasyncLocationS3Optional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

let AwsDatasyncLocationS3Required =
  { s3_bucket_arn: Text
  , subdirectory: Text
  , s3_config: S3Config
  }
let AwsDatasyncLocationS3 = AwsDatasyncLocationS3Optional //\\ AwsDatasyncLocationS3Required

in
{ AwsDatasyncLocationS3Optional = AwsDatasyncLocationS3Optional
, AwsDatasyncLocationS3Required = AwsDatasyncLocationS3Required
, AwsDatasyncLocationS3 = AwsDatasyncLocationS3
, S3Config = S3Config
}
