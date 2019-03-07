
let AwsS3BucketObjectOptional =
  { acl: Optional Text
  , cache_control: Optional Text
  , content: Optional Text
  , content_base64: Optional Text
  , content_disposition: Optional Text
  , content_encoding: Optional Text
  , content_language: Optional Text
  , content_type: Optional Text
  , etag: Optional Text
  , kms_key_id: Optional Text
  , server_side_encryption: Optional Text
  , source: Optional Text
  , storage_class: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , website_redirect: Optional Text
  }

let AwsS3BucketObjectRequired =
  { bucket: Text
  , key: Text
  }
let AwsS3BucketObject = AwsS3BucketObjectOptional //\\ AwsS3BucketObjectRequired

in
{ AwsS3BucketObjectOptional = AwsS3BucketObjectOptional
, AwsS3BucketObjectRequired = AwsS3BucketObjectRequired
, AwsS3BucketObject = AwsS3BucketObject
}
