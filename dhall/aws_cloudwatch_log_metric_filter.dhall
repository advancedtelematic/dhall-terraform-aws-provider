
let MetricTransformationOptional =
  { default_value: Optional Text }

let MetricTransformationRequired =
  { name: Text
  , namespace: Text
  , value: Text
  }
let MetricTransformation = MetricTransformationOptional //\\ MetricTransformationRequired

let AwsCloudwatchLogMetricFilterOptional = {}

let AwsCloudwatchLogMetricFilterRequired =
  { log_group_name: Text
  , name: Text
  , pattern: Text
  , metric_transformation: MetricTransformation
  }
let AwsCloudwatchLogMetricFilter = AwsCloudwatchLogMetricFilterOptional //\\ AwsCloudwatchLogMetricFilterRequired

in
{ AwsCloudwatchLogMetricFilter = AwsCloudwatchLogMetricFilter
, MetricTransformationOptional = MetricTransformationOptional
, MetricTransformationRequired = MetricTransformationRequired
, MetricTransformation = MetricTransformation
}
