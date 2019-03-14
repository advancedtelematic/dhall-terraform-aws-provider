
let awsLambdaLayerVersion =
  { compatible_runtimes = None (List Text)
  , description = None Text
  , filename = None Text
  , license_info = None Text
  , s3_bucket = None Text
  , s3_key = None Text
  , s3_object_version = None Text
  , source_code_hash = None Text
  }

in
{ awsLambdaLayerVersion = awsLambdaLayerVersion
}
