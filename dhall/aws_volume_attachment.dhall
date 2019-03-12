
let AwsVolumeAttachmentOptional =
  { force_detach : Optional Bool
  , skip_destroy : Optional Bool
  }

let AwsVolumeAttachmentRequired =
  { device_name : Text
  , instance_id : Text
  , volume_id : Text
  }
let AwsVolumeAttachment = AwsVolumeAttachmentOptional //\\ AwsVolumeAttachmentRequired

in
{ AwsVolumeAttachmentOptional = AwsVolumeAttachmentOptional
, AwsVolumeAttachmentRequired = AwsVolumeAttachmentRequired
, AwsVolumeAttachment = AwsVolumeAttachment
}
