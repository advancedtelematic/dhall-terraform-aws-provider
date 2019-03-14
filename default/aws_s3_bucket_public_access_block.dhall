
let awsS3BucketPublicAccessBlock =
  { block_public_acls = None Bool
  , block_public_policy = None Bool
  , ignore_public_acls = None Bool
  , restrict_public_buckets = None Bool
  }

in
{ awsS3BucketPublicAccessBlock = awsS3BucketPublicAccessBlock
}
