
let stepAdjustment =
  { metric_interval_lower_bound = None Text
  , metric_interval_upper_bound = None Text
  }

let metricDimension = {}

let customizedMetricSpecification =
  { unit = None Text
  , metric_dimension = None (List (../dhall/aws_autoscaling_policy.dhall).MetricDimension)
  }

let predefinedMetricSpecification =
  { resource_label = None Text }

let targetTrackingConfiguration =
  { disable_scale_in = None Bool
  , customized_metric_specification = None (../dhall/aws_autoscaling_policy.dhall).CustomizedMetricSpecification
  , predefined_metric_specification = None (../dhall/aws_autoscaling_policy.dhall).PredefinedMetricSpecification
  }

let awsAutoscalingPolicy =
  { adjustment_type = None Text
  , cooldown = None Natural
  , estimated_instance_warmup = None Natural
  , metric_aggregation_type = None Text
  , min_adjustment_magnitude = None Natural
  , min_adjustment_step = None Natural
  , policy_type = None Text
  , scaling_adjustment = None Natural
  , step_adjustment = None (List (../dhall/aws_autoscaling_policy.dhall).StepAdjustment)
  , target_tracking_configuration = None (../dhall/aws_autoscaling_policy.dhall).TargetTrackingConfiguration
  }

in
{ awsAutoscalingPolicy = awsAutoscalingPolicy
, targetTrackingConfiguration = targetTrackingConfiguration
, predefinedMetricSpecification = predefinedMetricSpecification
, customizedMetricSpecification = customizedMetricSpecification
, stepAdjustment = stepAdjustment
}
