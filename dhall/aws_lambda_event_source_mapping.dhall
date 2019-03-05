
let AwsLambdaEventSourceMappingOptional =
  { batch_size: Optional Natural
  , enabled: Optional Bool
  , function_arn: Optional Text
  , last_modified: Optional Text
  , last_processing_result: Optional Text
  , starting_position: Optional Text
  , starting_position_timestamp: Optional Text
  , state: Optional Text
  , state_transition_reason: Optional Text
  , uuid: Optional Text
  }

let AwsLambdaEventSourceMappingRequired =
  { event_source_arn: Text
  , function_name: Text
  }
let AwsLambdaEventSourceMapping = AwsLambdaEventSourceMappingOptional //\\ AwsLambdaEventSourceMappingRequired

in
{ AwsLambdaEventSourceMappingOptional = AwsLambdaEventSourceMappingOptional
, AwsLambdaEventSourceMappingRequired = AwsLambdaEventSourceMappingRequired
, AwsLambdaEventSourceMapping = AwsLambdaEventSourceMapping
}
