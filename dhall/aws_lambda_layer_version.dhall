
let AwsLambdaLayerVersionOptional =
  { arn: Optional Text
  , compatible_runtimes: Optional (List Text)
  , created_date: Optional Text
  , description: Optional Text
  , filename: Optional Text
  , layer_arn: Optional Text
  , license_info: Optional Text
  , s3_bucket: Optional Text
  , s3_key: Optional Text
  , s3_object_version: Optional Text
  , source_code_hash: Optional Text
  , source_code_size: Optional Natural
  , version: Optional Text
  }

let AwsLambdaLayerVersionRequired =
  { layer_name: Text }
let AwsLambdaLayerVersion = AwsLambdaLayerVersionOptional //\\ AwsLambdaLayerVersionRequired

in
{ AwsLambdaLayerVersionOptional = AwsLambdaLayerVersionOptional
, AwsLambdaLayerVersionRequired = AwsLambdaLayerVersionRequired
, AwsLambdaLayerVersion = AwsLambdaLayerVersion
}
