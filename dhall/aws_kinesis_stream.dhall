
let AwsKinesisStreamOptional =
  { arn: Optional Text
  , encryption_type: Optional Text
  , kms_key_id: Optional Text
  , retention_period: Optional Natural
  , shard_level_metrics: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsKinesisStreamRequired =
  { name: Text
  , shard_count: Natural
  }
let AwsKinesisStream = AwsKinesisStreamOptional //\\ AwsKinesisStreamRequired

in
{ AwsKinesisStreamOptional = AwsKinesisStreamOptional
, AwsKinesisStreamRequired = AwsKinesisStreamRequired
, AwsKinesisStream = AwsKinesisStream
}
