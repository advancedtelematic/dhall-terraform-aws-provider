
let CloudwatchAlarmOptional = {}

let CloudwatchAlarmRequired =
  { alarm_name: Text
  , role_arn: Text
  , state_reason: Text
  , state_value: Text
  }
let CloudwatchAlarm = CloudwatchAlarmOptional //\\ CloudwatchAlarmRequired

let CloudwatchMetricOptional =
  { metric_timestamp: Optional Text }

let CloudwatchMetricRequired =
  { metric_name: Text
  , metric_namespace: Text
  , metric_unit: Text
  , metric_value: Text
  , role_arn: Text
  }
let CloudwatchMetric = CloudwatchMetricOptional //\\ CloudwatchMetricRequired

let DynamodbOptional =
  { hash_key_type: Optional Text
  , payload_field: Optional Text
  , range_key_field: Optional Text
  , range_key_type: Optional Text
  , range_key_value: Optional Text
  }

let DynamodbRequired =
  { hash_key_field: Text
  , hash_key_value: Text
  , role_arn: Text
  , table_name: Text
  }
let Dynamodb = DynamodbOptional //\\ DynamodbRequired

let ElasticsearchOptional = {}

let ElasticsearchRequired =
  { endpoint: Text
  , id: Text
  , index: Text
  , role_arn: Text
  , type: Text
  }
let Elasticsearch = ElasticsearchOptional //\\ ElasticsearchRequired

let FirehoseOptional =
  { separator: Optional Text }

let FirehoseRequired =
  { delivery_stream_name: Text
  , role_arn: Text
  }
let Firehose = FirehoseOptional //\\ FirehoseRequired

let KinesisOptional =
  { partition_key: Optional Text }

let KinesisRequired =
  { role_arn: Text
  , stream_name: Text
  }
let Kinesis = KinesisOptional //\\ KinesisRequired

let LambdaOptional = {}

let LambdaRequired =
  { function_arn: Text }
let Lambda = LambdaOptional //\\ LambdaRequired

let RepublishOptional = {}

let RepublishRequired =
  { role_arn: Text
  , topic: Text
  }
let Republish = RepublishOptional //\\ RepublishRequired

let S3Optional = {}

let S3Required =
  { bucket_name: Text
  , key: Text
  , role_arn: Text
  }
let S3 = S3Optional //\\ S3Required

let SnsOptional =
  { message_format: Optional Text }

let SnsRequired =
  { role_arn: Text
  , target_arn: Text
  }
let Sns = SnsOptional //\\ SnsRequired

let SqsOptional = {}

let SqsRequired =
  { queue_url: Text
  , role_arn: Text
  , use_base64: Bool
  }
let Sqs = SqsOptional //\\ SqsRequired

let AwsIotTopicRuleOptional =
  { arn: Optional Text
  , description: Optional Text
  , cloudwatch_alarm: Optional (List CloudwatchAlarm)
  , cloudwatch_metric: Optional (List CloudwatchMetric)
  , dynamodb: Optional (List Dynamodb)
  , elasticsearch: Optional (List Elasticsearch)
  , firehose: Optional (List Firehose)
  , kinesis: Optional (List Kinesis)
  , lambda: Optional (List Lambda)
  , republish: Optional (List Republish)
  , s3: Optional (List S3)
  , sns: Optional (List Sns)
  , sqs: Optional (List Sqs)
  }

let AwsIotTopicRuleRequired =
  { enabled: Bool
  , name: Text
  , sql: Text
  , sql_version: Text
  }
let AwsIotTopicRule = AwsIotTopicRuleOptional //\\ AwsIotTopicRuleRequired

in
{ AwsIotTopicRuleOptional = AwsIotTopicRuleOptional
, AwsIotTopicRuleRequired = AwsIotTopicRuleRequired
, AwsIotTopicRule = AwsIotTopicRule
, Sqs = Sqs
, SnsOptional = SnsOptional
, SnsRequired = SnsRequired
, Sns = Sns
, S3 = S3
, Republish = Republish
, Lambda = Lambda
, KinesisOptional = KinesisOptional
, KinesisRequired = KinesisRequired
, Kinesis = Kinesis
, FirehoseOptional = FirehoseOptional
, FirehoseRequired = FirehoseRequired
, Firehose = Firehose
, Elasticsearch = Elasticsearch
, DynamodbOptional = DynamodbOptional
, DynamodbRequired = DynamodbRequired
, Dynamodb = Dynamodb
, CloudwatchMetricOptional = CloudwatchMetricOptional
, CloudwatchMetricRequired = CloudwatchMetricRequired
, CloudwatchMetric = CloudwatchMetric
, CloudwatchAlarm = CloudwatchAlarm
}
