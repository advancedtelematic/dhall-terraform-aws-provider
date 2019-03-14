
let awsKinesisStream =
  { arn = None Text
  , encryption_type = None Text
  , kms_key_id = None Text
  , retention_period = None Natural
  , shard_level_metrics = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsKinesisStream = awsKinesisStream
}
