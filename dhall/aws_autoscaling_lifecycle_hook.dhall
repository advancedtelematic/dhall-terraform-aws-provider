
let AwsAutoscalingLifecycleHookOptional =
  { default_result: Optional Text
  , heartbeat_timeout: Optional Natural
  , notification_metadata: Optional Text
  , notification_target_arn: Optional Text
  , role_arn: Optional Text
  }

let AwsAutoscalingLifecycleHookRequired =
  { autoscaling_group_name: Text
  , lifecycle_transition: Text
  , name: Text
  }
let AwsAutoscalingLifecycleHook = AwsAutoscalingLifecycleHookOptional //\\ AwsAutoscalingLifecycleHookRequired

in
{ AwsAutoscalingLifecycleHookOptional = AwsAutoscalingLifecycleHookOptional
, AwsAutoscalingLifecycleHookRequired = AwsAutoscalingLifecycleHookRequired
, AwsAutoscalingLifecycleHook = AwsAutoscalingLifecycleHook
}
