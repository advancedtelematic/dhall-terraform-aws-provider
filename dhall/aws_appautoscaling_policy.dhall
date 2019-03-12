
let StepAdjustmentOptional =
  { metric_interval_lower_bound : Optional Text
  , metric_interval_upper_bound : Optional Text
  }

let StepAdjustmentRequired =
  { scaling_adjustment : Natural }
let StepAdjustment = StepAdjustmentOptional //\\ StepAdjustmentRequired

let StepAdjustmentOptional =
  { metric_interval_lower_bound : Optional Text
  , metric_interval_upper_bound : Optional Text
  }

let StepAdjustmentRequired =
  { scaling_adjustment : Natural }
let StepAdjustment = StepAdjustmentOptional //\\ StepAdjustmentRequired

let StepScalingPolicyConfigurationOptional =
  { adjustment_type : Optional Text
  , cooldown : Optional Natural
  , metric_aggregation_type : Optional Text
  , min_adjustment_magnitude : Optional Natural
  , step_adjustment : Optional (List StepAdjustment)
  }

let StepScalingPolicyConfigurationRequired = {}
let StepScalingPolicyConfiguration = StepScalingPolicyConfigurationOptional //\\ StepScalingPolicyConfigurationRequired

let DimensionsOptional = {}

let DimensionsRequired =
  { name : Text
  , value : Text
  }
let Dimensions = DimensionsOptional //\\ DimensionsRequired

let CustomizedMetricSpecificationOptional =
  { unit : Optional Text
  , dimensions : Optional (List Dimensions)
  }

let CustomizedMetricSpecificationRequired =
  { metric_name : Text
  , namespace : Text
  , statistic : Text
  }
let CustomizedMetricSpecification = CustomizedMetricSpecificationOptional //\\ CustomizedMetricSpecificationRequired

let PredefinedMetricSpecificationOptional =
  { resource_label : Optional Text }

let PredefinedMetricSpecificationRequired =
  { predefined_metric_type : Text }
let PredefinedMetricSpecification = PredefinedMetricSpecificationOptional //\\ PredefinedMetricSpecificationRequired

let TargetTrackingScalingPolicyConfigurationOptional =
  { disable_scale_in : Optional Bool
  , scale_in_cooldown : Optional Natural
  , scale_out_cooldown : Optional Natural
  , customized_metric_specification : Optional CustomizedMetricSpecification
  , predefined_metric_specification : Optional PredefinedMetricSpecification
  }

let TargetTrackingScalingPolicyConfigurationRequired =
  { target_value : Natural }
let TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfigurationOptional //\\ TargetTrackingScalingPolicyConfigurationRequired

let AwsAppautoscalingPolicyOptional =
  { adjustment_type : Optional Text
  , alarms : Optional (List Text)
  , cooldown : Optional Natural
  , metric_aggregation_type : Optional Text
  , min_adjustment_magnitude : Optional Natural
  , policy_type : Optional Text
  , step_adjustment : Optional (List StepAdjustment)
  , step_scaling_policy_configuration : Optional StepScalingPolicyConfiguration
  , target_tracking_scaling_policy_configuration : Optional TargetTrackingScalingPolicyConfiguration
  }

let AwsAppautoscalingPolicyRequired =
  { name : Text
  , resource_id : Text
  , scalable_dimension : Text
  , service_namespace : Text
  }
let AwsAppautoscalingPolicy = AwsAppautoscalingPolicyOptional //\\ AwsAppautoscalingPolicyRequired

in
{ AwsAppautoscalingPolicyOptional = AwsAppautoscalingPolicyOptional
, AwsAppautoscalingPolicyRequired = AwsAppautoscalingPolicyRequired
, AwsAppautoscalingPolicy = AwsAppautoscalingPolicy
, TargetTrackingScalingPolicyConfigurationOptional = TargetTrackingScalingPolicyConfigurationOptional
, TargetTrackingScalingPolicyConfigurationRequired = TargetTrackingScalingPolicyConfigurationRequired
, TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfiguration
, PredefinedMetricSpecificationOptional = PredefinedMetricSpecificationOptional
, PredefinedMetricSpecificationRequired = PredefinedMetricSpecificationRequired
, PredefinedMetricSpecification = PredefinedMetricSpecification
, CustomizedMetricSpecificationOptional = CustomizedMetricSpecificationOptional
, CustomizedMetricSpecificationRequired = CustomizedMetricSpecificationRequired
, CustomizedMetricSpecification = CustomizedMetricSpecification
, Dimensions = Dimensions
, StepScalingPolicyConfigurationOptional = StepScalingPolicyConfigurationOptional
, StepScalingPolicyConfigurationRequired = StepScalingPolicyConfigurationRequired
, StepScalingPolicyConfiguration = StepScalingPolicyConfiguration
, StepAdjustmentOptional = StepAdjustmentOptional
, StepAdjustmentRequired = StepAdjustmentRequired
, StepAdjustment = StepAdjustment
, StepAdjustmentOptional = StepAdjustmentOptional
, StepAdjustmentRequired = StepAdjustmentRequired
, StepAdjustment = StepAdjustment
}
