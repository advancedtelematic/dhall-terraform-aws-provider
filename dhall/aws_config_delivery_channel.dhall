
let SnapshotDeliveryPropertiesOptional =
  { delivery_frequency: Optional Text }

let SnapshotDeliveryPropertiesRequired = {}
let SnapshotDeliveryProperties = SnapshotDeliveryPropertiesOptional //\\ SnapshotDeliveryPropertiesRequired

let AwsConfigDeliveryChannelOptional =
  { name: Optional Text
  , s3_key_prefix: Optional Text
  , sns_topic_arn: Optional Text
  , snapshot_delivery_properties: Optional SnapshotDeliveryProperties
  }

let AwsConfigDeliveryChannelRequired =
  { s3_bucket_name: Text }
let AwsConfigDeliveryChannel = AwsConfigDeliveryChannelOptional //\\ AwsConfigDeliveryChannelRequired

in
{ AwsConfigDeliveryChannelOptional = AwsConfigDeliveryChannelOptional
, AwsConfigDeliveryChannelRequired = AwsConfigDeliveryChannelRequired
, AwsConfigDeliveryChannel = AwsConfigDeliveryChannel
, SnapshotDeliveryPropertiesOptional = SnapshotDeliveryPropertiesOptional
, SnapshotDeliveryPropertiesRequired = SnapshotDeliveryPropertiesRequired
, SnapshotDeliveryProperties = SnapshotDeliveryProperties
}
