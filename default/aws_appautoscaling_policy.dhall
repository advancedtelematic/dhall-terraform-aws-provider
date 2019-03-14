
let stepAdjustment =
  { metric_interval_lower_bound = None Text
  , metric_interval_upper_bound = None Text
  }

let stepAdjustment =
  { metric_interval_lower_bound = None Text
  , metric_interval_upper_bound = None Text
  }

let stepScalingPolicyConfiguration =
  { adjustment_type = None Text
  , cooldown = None Natural
  , metric_aggregation_type = None Text
  , min_adjustment_magnitude = None Natural
  , step_adjustment = None (List (../dhall/aws_appautoscaling_policy.dhall).StepAdjustment)
  }

let dimensions = {}

let customizedMetricSpecification =
  { unit = None Text
  , dimensions = None (List (../dhall/aws_appautoscaling_policy.dhall).Dimensions)
  }

let predefinedMetricSpecification =
  { resource_label = None Text }

let targetTrackingScalingPolicyConfiguration =
  { disable_scale_in = None Bool
  , scale_in_cooldown = None Natural
  , scale_out_cooldown = None Natural
  , customized_metric_specification = None (../dhall/aws_appautoscaling_policy.dhall).CustomizedMetricSpecification
  , predefined_metric_specification = None (../dhall/aws_appautoscaling_policy.dhall).PredefinedMetricSpecification
  }

let awsAppautoscalingPolicy =
  { adjustment_type = None Text
  , alarms = None (List Text)
  , cooldown = None Natural
  , metric_aggregation_type = None Text
  , min_adjustment_magnitude = None Natural
  , policy_type = None Text
  , step_adjustment = None (List (../dhall/aws_appautoscaling_policy.dhall).StepAdjustment)
  , step_scaling_policy_configuration = None (../dhall/aws_appautoscaling_policy.dhall).StepScalingPolicyConfiguration
  , target_tracking_scaling_policy_configuration = None (../dhall/aws_appautoscaling_policy.dhall).TargetTrackingScalingPolicyConfiguration
  }

in
{ awsAppautoscalingPolicy = awsAppautoscalingPolicy
, targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfiguration
, predefinedMetricSpecification = predefinedMetricSpecification
, customizedMetricSpecification = customizedMetricSpecification
, stepScalingPolicyConfiguration = stepScalingPolicyConfiguration
, stepAdjustment = stepAdjustment
, stepAdjustment = stepAdjustment
}
