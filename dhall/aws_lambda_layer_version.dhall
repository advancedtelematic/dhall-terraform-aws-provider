
let AwsLambdaLayerVersionOptional =
  { compatible_runtimes: Optional (List Text)
  , description: Optional Text
  , filename: Optional Text
  , license_info: Optional Text
  , s3_bucket: Optional Text
  , s3_key: Optional Text
  , s3_object_version: Optional Text
  , source_code_hash: Optional Text
  }

let AwsLambdaLayerVersionRequired =
  { layer_name: Text }
let AwsLambdaLayerVersion = AwsLambdaLayerVersionOptional //\\ AwsLambdaLayerVersionRequired

in
{ AwsLambdaLayerVersionOptional = AwsLambdaLayerVersionOptional
, AwsLambdaLayerVersionRequired = AwsLambdaLayerVersionRequired
, AwsLambdaLayerVersion = AwsLambdaLayerVersion
}
