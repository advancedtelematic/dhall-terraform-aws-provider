
let deadLetterConfig = {}

let environment =
  { variables = None (List { mapKey : Text, mapValue : Text }) }

let tracingConfig = {}

let vpcConfig = {}

let awsLambdaFunction =
  { description = None Text
  , filename = None Text
  , kms_key_arn = None Text
  , layers = None (List Text)
  , memory_size = None Natural
  , publish = None Bool
  , reserved_concurrent_executions = None Natural
  , s3_bucket = None Text
  , s3_key = None Text
  , s3_object_version = None Text
  , source_code_hash = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , timeout = None Natural
  , dead_letter_config = None (../dhall/aws_lambda_function.dhall).DeadLetterConfig
  , environment = None (../dhall/aws_lambda_function.dhall).Environment
  , tracing_config = None (../dhall/aws_lambda_function.dhall).TracingConfig
  , vpc_config = None (../dhall/aws_lambda_function.dhall).VpcConfig
  }

in
{ awsLambdaFunction = awsLambdaFunction
, environment = environment
}
