
let awsAutoscalingSchedule =
  { desired_capacity = None Natural
  , end_time = None Text
  , max_size = None Natural
  , min_size = None Natural
  , recurrence = None Text
  , start_time = None Text
  }

in
{ awsAutoscalingSchedule = awsAutoscalingSchedule
}
