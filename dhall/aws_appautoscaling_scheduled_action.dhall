
let ScalableTargetActionOptional =
  { max_capacity: Optional Natural
  , min_capacity: Optional Natural
  }

let ScalableTargetActionRequired = {}
let ScalableTargetAction = ScalableTargetActionOptional //\\ ScalableTargetActionRequired

let AwsAppautoscalingScheduledActionOptional =
  { arn: Optional Text
  , end_time: Optional Text
  , scalable_dimension: Optional Text
  , schedule: Optional Text
  , start_time: Optional Text
  , scalable_target_action: Optional ScalableTargetAction
  }

let AwsAppautoscalingScheduledActionRequired =
  { name: Text
  , resource_id: Text
  , service_namespace: Text
  }
let AwsAppautoscalingScheduledAction = AwsAppautoscalingScheduledActionOptional //\\ AwsAppautoscalingScheduledActionRequired

in
{ AwsAppautoscalingScheduledActionOptional = AwsAppautoscalingScheduledActionOptional
, AwsAppautoscalingScheduledActionRequired = AwsAppautoscalingScheduledActionRequired
, AwsAppautoscalingScheduledAction = AwsAppautoscalingScheduledAction
, ScalableTargetActionOptional = ScalableTargetActionOptional
, ScalableTargetActionRequired = ScalableTargetActionRequired
, ScalableTargetAction = ScalableTargetAction
}
