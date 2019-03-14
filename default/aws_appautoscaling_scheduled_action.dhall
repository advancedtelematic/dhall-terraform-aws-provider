
let scalableTargetAction =
  { max_capacity = None Natural
  , min_capacity = None Natural
  }

let awsAppautoscalingScheduledAction =
  { end_time = None Text
  , scalable_dimension = None Text
  , schedule = None Text
  , start_time = None Text
  , scalable_target_action = None (../dhall/aws_appautoscaling_scheduled_action.dhall).ScalableTargetAction
  }

in
{ awsAppautoscalingScheduledAction = awsAppautoscalingScheduledAction
, scalableTargetAction = scalableTargetAction
}
