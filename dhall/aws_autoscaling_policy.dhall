
let StepAdjustmentOptional =
  { metric_interval_lower_bound: Optional Text
  , metric_interval_upper_bound: Optional Text
  }

let StepAdjustmentRequired =
  { scaling_adjustment: Natural }
let StepAdjustment = StepAdjustmentOptional //\\ StepAdjustmentRequired

let MetricDimensionOptional = {}

let MetricDimensionRequired =
  { name: Text
  , value: Text
  }
let MetricDimension = MetricDimensionOptional //\\ MetricDimensionRequired

let CustomizedMetricSpecificationOptional =
  { unit: Optional Text
  , metric_dimension: Optional (List MetricDimension)
  }

let CustomizedMetricSpecificationRequired =
  { metric_name: Text
  , namespace: Text
  , statistic: Text
  }
let CustomizedMetricSpecification = CustomizedMetricSpecificationOptional //\\ CustomizedMetricSpecificationRequired

let PredefinedMetricSpecificationOptional =
  { resource_label: Optional Text }

let PredefinedMetricSpecificationRequired =
  { predefined_metric_type: Text }
let PredefinedMetricSpecification = PredefinedMetricSpecificationOptional //\\ PredefinedMetricSpecificationRequired

let TargetTrackingConfigurationOptional =
  { disable_scale_in: Optional Bool
  , customized_metric_specification: Optional CustomizedMetricSpecification
  , predefined_metric_specification: Optional PredefinedMetricSpecification
  }

let TargetTrackingConfigurationRequired =
  { target_value: Natural }
let TargetTrackingConfiguration = TargetTrackingConfigurationOptional //\\ TargetTrackingConfigurationRequired

let AwsAutoscalingPolicyOptional =
  { adjustment_type: Optional Text
  , arn: Optional Text
  , cooldown: Optional Natural
  , estimated_instance_warmup: Optional Natural
  , metric_aggregation_type: Optional Text
  , min_adjustment_magnitude: Optional Natural
  , min_adjustment_step: Optional Natural
  , policy_type: Optional Text
  , scaling_adjustment: Optional Natural
  , step_adjustment: Optional (List StepAdjustment)
  , target_tracking_configuration: Optional TargetTrackingConfiguration
  }

let AwsAutoscalingPolicyRequired =
  { autoscaling_group_name: Text
  , name: Text
  }
let AwsAutoscalingPolicy = AwsAutoscalingPolicyOptional //\\ AwsAutoscalingPolicyRequired

in
{ AwsAutoscalingPolicyOptional = AwsAutoscalingPolicyOptional
, AwsAutoscalingPolicyRequired = AwsAutoscalingPolicyRequired
, AwsAutoscalingPolicy = AwsAutoscalingPolicy
, TargetTrackingConfigurationOptional = TargetTrackingConfigurationOptional
, TargetTrackingConfigurationRequired = TargetTrackingConfigurationRequired
, TargetTrackingConfiguration = TargetTrackingConfiguration
, PredefinedMetricSpecificationOptional = PredefinedMetricSpecificationOptional
, PredefinedMetricSpecificationRequired = PredefinedMetricSpecificationRequired
, PredefinedMetricSpecification = PredefinedMetricSpecification
, CustomizedMetricSpecificationOptional = CustomizedMetricSpecificationOptional
, CustomizedMetricSpecificationRequired = CustomizedMetricSpecificationRequired
, CustomizedMetricSpecification = CustomizedMetricSpecification
, MetricDimension = MetricDimension
, StepAdjustmentOptional = StepAdjustmentOptional
, StepAdjustmentRequired = StepAdjustmentRequired
, StepAdjustment = StepAdjustment
}
