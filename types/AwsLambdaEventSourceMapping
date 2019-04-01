
let AwsLambdaEventSourceMappingOptional =
  { batch_size : Optional Natural
  , enabled : Optional Bool
  , starting_position : Optional Text
  , starting_position_timestamp : Optional Text
  }

let AwsLambdaEventSourceMappingRequired =
  { event_source_arn : Text
  , function_name : Text
  }
let AwsLambdaEventSourceMapping = AwsLambdaEventSourceMappingOptional //\\ AwsLambdaEventSourceMappingRequired

in
{ AwsLambdaEventSourceMappingOptional = AwsLambdaEventSourceMappingOptional
, AwsLambdaEventSourceMappingRequired = AwsLambdaEventSourceMappingRequired
, AwsLambdaEventSourceMapping = AwsLambdaEventSourceMapping
}
