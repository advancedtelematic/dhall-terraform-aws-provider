
let MetricOptional =
  { dimensions : Optional (List { mapKey : Text, mapValue : Text })
  , namespace : Optional Text
  , unit : Optional Text
  }

let MetricRequired =
  { metric_name : Text
  , period : Natural
  , stat : Text
  }
let Metric = MetricOptional //\\ MetricRequired

let MetricQueryOptional =
  { expression : Optional Text
  , label : Optional Text
  , return_data : Optional Bool
  , metric : Optional Metric
  }

let MetricQueryRequired =
  { id : Text }
let MetricQuery = MetricQueryOptional //\\ MetricQueryRequired

let AwsCloudwatchMetricAlarmOptional =
  { actions_enabled : Optional Bool
  , alarm_actions : Optional (List Text)
  , alarm_description : Optional Text
  , datapoints_to_alarm : Optional Natural
  , dimensions : Optional (List { mapKey : Text, mapValue : Text })
  , evaluate_low_sample_count_percentiles : Optional Text
  , extended_statistic : Optional Text
  , insufficient_data_actions : Optional (List Text)
  , metric_name : Optional Text
  , namespace : Optional Text
  , ok_actions : Optional (List Text)
  , period : Optional Natural
  , statistic : Optional Text
  , treat_missing_data : Optional Text
  , unit : Optional Text
  , metric_query : Optional (List MetricQuery)
  }

let AwsCloudwatchMetricAlarmRequired =
  { alarm_name : Text
  , comparison_operator : Text
  , evaluation_periods : Natural
  , threshold : Natural
  }
let AwsCloudwatchMetricAlarm = AwsCloudwatchMetricAlarmOptional //\\ AwsCloudwatchMetricAlarmRequired

in
{ AwsCloudwatchMetricAlarmOptional = AwsCloudwatchMetricAlarmOptional
, AwsCloudwatchMetricAlarmRequired = AwsCloudwatchMetricAlarmRequired
, AwsCloudwatchMetricAlarm = AwsCloudwatchMetricAlarm
, MetricQueryOptional = MetricQueryOptional
, MetricQueryRequired = MetricQueryRequired
, MetricQuery = MetricQuery
, MetricOptional = MetricOptional
, MetricRequired = MetricRequired
, Metric = Metric
}
