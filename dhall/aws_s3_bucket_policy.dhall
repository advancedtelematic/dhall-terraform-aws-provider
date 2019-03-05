
let AwsS3BucketPolicyOptional = {}

let AwsS3BucketPolicyRequired =
  { bucket: Text
  , policy: Text
  }
let AwsS3BucketPolicy = AwsS3BucketPolicyOptional //\\ AwsS3BucketPolicyRequired

in
{ AwsS3BucketPolicy = AwsS3BucketPolicy
}
