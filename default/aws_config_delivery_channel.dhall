
let snapshotDeliveryProperties =
  { delivery_frequency = None Text }

let awsConfigDeliveryChannel =
  { name = None Text
  , s3_key_prefix = None Text
  , sns_topic_arn = None Text
  , snapshot_delivery_properties = None (../dhall/aws_config_delivery_channel.dhall).SnapshotDeliveryProperties
  }

in
{ awsConfigDeliveryChannel = awsConfigDeliveryChannel
, snapshotDeliveryProperties = snapshotDeliveryProperties
}
