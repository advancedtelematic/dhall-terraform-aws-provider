
let AwsS3BucketPublicAccessBlockOptional =
  { block_public_acls: Optional Bool
  , block_public_policy: Optional Bool
  , ignore_public_acls: Optional Bool
  , restrict_public_buckets: Optional Bool
  }

let AwsS3BucketPublicAccessBlockRequired =
  { bucket: Text }
let AwsS3BucketPublicAccessBlock = AwsS3BucketPublicAccessBlockOptional //\\ AwsS3BucketPublicAccessBlockRequired

in
{ AwsS3BucketPublicAccessBlockOptional = AwsS3BucketPublicAccessBlockOptional
, AwsS3BucketPublicAccessBlockRequired = AwsS3BucketPublicAccessBlockRequired
, AwsS3BucketPublicAccessBlock = AwsS3BucketPublicAccessBlock
}
