
let S3DestinationOptional =
  { kms_key_arn: Optional Text
  , prefix: Optional Text
  , sync_format: Optional Text
  }

let S3DestinationRequired =
  { bucket_name: Text
  , region: Text
  }
let S3Destination = S3DestinationOptional //\\ S3DestinationRequired

let AwsSsmResourceDataSyncOptional = {}

let AwsSsmResourceDataSyncRequired =
  { name: Text
  , s3_destination: S3Destination
  }
let AwsSsmResourceDataSync = AwsSsmResourceDataSyncOptional //\\ AwsSsmResourceDataSyncRequired

in
{ AwsSsmResourceDataSync = AwsSsmResourceDataSync
, S3DestinationOptional = S3DestinationOptional
, S3DestinationRequired = S3DestinationRequired
, S3Destination = S3Destination
}
