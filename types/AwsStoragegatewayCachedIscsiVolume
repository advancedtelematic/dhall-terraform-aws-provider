
let AwsStoragegatewayCachedIscsiVolumeOptional =
  { snapshot_id : Optional Text
  , source_volume_arn : Optional Text
  }

let AwsStoragegatewayCachedIscsiVolumeRequired =
  { gateway_arn : Text
  , network_interface_id : Text
  , target_name : Text
  , volume_size_in_bytes : Natural
  }
let AwsStoragegatewayCachedIscsiVolume = AwsStoragegatewayCachedIscsiVolumeOptional //\\ AwsStoragegatewayCachedIscsiVolumeRequired

in
{ AwsStoragegatewayCachedIscsiVolumeOptional = AwsStoragegatewayCachedIscsiVolumeOptional
, AwsStoragegatewayCachedIscsiVolumeRequired = AwsStoragegatewayCachedIscsiVolumeRequired
, AwsStoragegatewayCachedIscsiVolume = AwsStoragegatewayCachedIscsiVolume
}
