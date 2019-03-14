
let metric =
  { dimensions = None (List { mapKey : Text, mapValue : Text })
  , namespace = None Text
  , unit = None Text
  }

let metricQuery =
  { expression = None Text
  , label = None Text
  , return_data = None Bool
  , metric = None (../dhall/aws_cloudwatch_metric_alarm.dhall).Metric
  }

let awsCloudwatchMetricAlarm =
  { actions_enabled = None Bool
  , alarm_actions = None (List Text)
  , alarm_description = None Text
  , datapoints_to_alarm = None Natural
  , dimensions = None (List { mapKey : Text, mapValue : Text })
  , evaluate_low_sample_count_percentiles = None Text
  , extended_statistic = None Text
  , insufficient_data_actions = None (List Text)
  , metric_name = None Text
  , namespace = None Text
  , ok_actions = None (List Text)
  , period = None Natural
  , statistic = None Text
  , treat_missing_data = None Text
  , unit = None Text
  , metric_query = None (List (../dhall/aws_cloudwatch_metric_alarm.dhall).MetricQuery)
  }

in
{ awsCloudwatchMetricAlarm = awsCloudwatchMetricAlarm
, metricQuery = metricQuery
, metric = metric
}
