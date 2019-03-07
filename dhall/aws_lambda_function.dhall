
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

let VpcConfigOptional = {}

let VpcConfigRequired =
  { security_group_ids: (List Text)
  , subnet_ids: (List Text)
  }
let VpcConfig = VpcConfigOptional //\\ VpcConfigRequired

let AwsLambdaFunctionOptional =
  { description: Optional Text
  , filename: Optional Text
  , kms_key_arn: Optional Text
  , layers: Optional (List Text)
  , memory_size: Optional Natural
  , publish: Optional Bool
  , reserved_concurrent_executions: Optional Natural
  , s3_bucket: Optional Text
  , s3_key: Optional Text
  , s3_object_version: Optional Text
  , source_code_hash: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , timeout: Optional Natural
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
, VpcConfig = VpcConfig
, TracingConfig = TracingConfig
, EnvironmentOptional = EnvironmentOptional
, EnvironmentRequired = EnvironmentRequired
, Environment = Environment
, DeadLetterConfig = DeadLetterConfig
}
