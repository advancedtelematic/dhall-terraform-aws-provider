
let DeadLetterConfigOptional = {}

let DeadLetterConfigRequired =
  { target_arn: Text }
let DeadLetterConfig = DeadLetterConfigOptional //\\ DeadLetterConfigRequired

let EnvironmentOptional =
  { variables: Optional (List { mapKey : Text, mapValue : Text }) }

let EnvironmentRequired = {}
let Environment = EnvironmentOptional //\\ EnvironmentRequired

let TracingConfigOptional = {}

let TracingConfigRequired =
  { mode: Text }
let TracingConfig = TracingConfigOptional //\\ TracingConfigRequired

let VpcConfigOptional =
  { vpc_id: Optional Text }

let VpcConfigRequired =
  { security_group_ids: (List Text)
  , subnet_ids: (List Text)
  }
let VpcConfig = VpcConfigOptional //\\ VpcConfigRequired

let AwsLambdaFunctionOptional =
  { arn: Optional Text
  , description: Optional Text
  , filename: Optional Text
  , invoke_arn: Optional Text
  , kms_key_arn: Optional Text
  , last_modified: Optional Text
  , layers: Optional (List Text)
  , memory_size: Optional Natural
  , publish: Optional Bool
  , qualified_arn: Optional Text
  , reserved_concurrent_executions: Optional Natural
  , s3_bucket: Optional Text
  , s3_key: Optional Text
  , s3_object_version: Optional Text
  , source_code_hash: Optional Text
  , source_code_size: Optional Natural
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , timeout: Optional Natural
  , version: Optional Text
  , dead_letter_config: Optional DeadLetterConfig
  , environment: Optional Environment
  , tracing_config: Optional TracingConfig
  , vpc_config: Optional VpcConfig
  }

let AwsLambdaFunctionRequired =
  { function_name: Text
  , handler: Text
  , role: Text
  , runtime: Text
  }
let AwsLambdaFunction = AwsLambdaFunctionOptional //\\ AwsLambdaFunctionRequired

in
{ AwsLambdaFunctionOptional = AwsLambdaFunctionOptional
, AwsLambdaFunctionRequired = AwsLambdaFunctionRequired
, AwsLambdaFunction = AwsLambdaFunction
, VpcConfigOptional = VpcConfigOptional
, VpcConfigRequired = VpcConfigRequired
, VpcConfig = VpcConfig
, TracingConfig = TracingConfig
, EnvironmentOptional = EnvironmentOptional
, EnvironmentRequired = EnvironmentRequired
, Environment = Environment
, DeadLetterConfig = DeadLetterConfig
}
