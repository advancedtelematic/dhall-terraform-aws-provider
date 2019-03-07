
let AwsAutoscalingScheduleOptional =
  { desired_capacity: Optional Natural
  , end_time: Optional Text
  , max_size: Optional Natural
  , min_size: Optional Natural
  , recurrence: Optional Text
  , start_time: Optional Text
  }

let AwsAutoscalingScheduleRequired =
  { autoscaling_group_name: Text
  , scheduled_action_name: Text
  }
let AwsAutoscalingSchedule = AwsAutoscalingScheduleOptional //\\ AwsAutoscalingScheduleRequired

in
{ AwsAutoscalingScheduleOptional = AwsAutoscalingScheduleOptional
, AwsAutoscalingScheduleRequired = AwsAutoscalingScheduleRequired
, AwsAutoscalingSchedule = AwsAutoscalingSchedule
}
