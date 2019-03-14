
let awsS3BucketObject =
  { acl = None Text
  , cache_control = None Text
  , content = None Text
  , content_base64 = None Text
  , content_disposition = None Text
  , content_encoding = None Text
  , content_language = None Text
  , content_type = None Text
  , etag = None Text
  , kms_key_id = None Text
  , server_side_encryption = None Text
  , source = None Text
  , storage_class = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , website_redirect = None Text
  }

in
{ awsS3BucketObject = awsS3BucketObject
}
