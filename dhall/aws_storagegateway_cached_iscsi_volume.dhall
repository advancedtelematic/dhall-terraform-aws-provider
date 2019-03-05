
let AwsStoragegatewayCachedIscsiVolumeOptional =
  { arn: Optional Text
  , chap_enabled: Optional Bool
  , lun_number: Optional Natural
  , network_interface_port: Optional Natural
  , snapshot_id: Optional Text
  , source_volume_arn: Optional Text
  , target_arn: Optional Text
  , volume_arn: Optional Text
  , volume_id: Optional Text
  }

let AwsStoragegatewayCachedIscsiVolumeRequired =
  { gateway_arn: Text
  , network_interface_id: Text
  , target_name: Text
  , volume_size_in_bytes: Natural
  }
let AwsStoragegatewayCachedIscsiVolume = AwsStoragegatewayCachedIscsiVolumeOptional //\\ AwsStoragegatewayCachedIscsiVolumeRequired

in
{ AwsStoragegatewayCachedIscsiVolumeOptional = AwsStoragegatewayCachedIscsiVolumeOptional
, AwsStoragegatewayCachedIscsiVolumeRequired = AwsStoragegatewayCachedIscsiVolumeRequired
, AwsStoragegatewayCachedIscsiVolume = AwsStoragegatewayCachedIscsiVolume
}
