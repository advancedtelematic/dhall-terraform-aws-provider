
let cloudwatchAlarm = {}

let cloudwatchMetric =
  { metric_timestamp = None Text }

let dynamodb =
  { hash_key_type = None Text
  , payload_field = None Text
  , range_key_field = None Text
  , range_key_type = None Text
  , range_key_value = None Text
  }

let elasticsearch = {}

let firehose =
  { separator = None Text }

let kinesis =
  { partition_key = None Text }

let lambda = {}

let republish = {}

let s3 = {}

let sns =
  { message_format = None Text }

let sqs = {}

let awsIotTopicRule =
  { description = None Text
  , cloudwatch_alarm = None (List (../dhall/aws_iot_topic_rule.dhall).CloudwatchAlarm)
  , cloudwatch_metric = None (List (../dhall/aws_iot_topic_rule.dhall).CloudwatchMetric)
  , dynamodb = None (List (../dhall/aws_iot_topic_rule.dhall).Dynamodb)
  , elasticsearch = None (List (../dhall/aws_iot_topic_rule.dhall).Elasticsearch)
  , firehose = None (List (../dhall/aws_iot_topic_rule.dhall).Firehose)
  , kinesis = None (List (../dhall/aws_iot_topic_rule.dhall).Kinesis)
  , lambda = None (List (../dhall/aws_iot_topic_rule.dhall).Lambda)
  , republish = None (List (../dhall/aws_iot_topic_rule.dhall).Republish)
  , s3 = None (List (../dhall/aws_iot_topic_rule.dhall).S3)
  , sns = None (List (../dhall/aws_iot_topic_rule.dhall).Sns)
  , sqs = None (List (../dhall/aws_iot_topic_rule.dhall).Sqs)
  }

in
{ awsIotTopicRule = awsIotTopicRule
, sns = sns
, kinesis = kinesis
, firehose = firehose
, dynamodb = dynamodb
, cloudwatchMetric = cloudwatchMetric
}
