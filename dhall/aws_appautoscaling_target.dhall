
let AwsAppautoscalingTargetOptional =
  { role_arn: Optional Text }

let AwsAppautoscalingTargetRequired =
  { max_capacity: Natural
  , min_capacity: Natural
  , resource_id: Text
  , scalable_dimension: Text
  , service_namespace: Text
  }
let AwsAppautoscalingTarget = AwsAppautoscalingTargetOptional //\\ AwsAppautoscalingTargetRequired

in
{ AwsAppautoscalingTargetOptional = AwsAppautoscalingTargetOptional
, AwsAppautoscalingTargetRequired = AwsAppautoscalingTargetRequired
, AwsAppautoscalingTarget = AwsAppautoscalingTarget
}
