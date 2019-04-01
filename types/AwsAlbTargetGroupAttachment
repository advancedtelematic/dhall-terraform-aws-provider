
let AwsAlbTargetGroupAttachmentOptional =
  { availability_zone : Optional Text
  , port : Optional Natural
  }

let AwsAlbTargetGroupAttachmentRequired =
  { target_group_arn : Text
  , target_id : Text
  }
let AwsAlbTargetGroupAttachment = AwsAlbTargetGroupAttachmentOptional //\\ AwsAlbTargetGroupAttachmentRequired

in
{ AwsAlbTargetGroupAttachmentOptional = AwsAlbTargetGroupAttachmentOptional
, AwsAlbTargetGroupAttachmentRequired = AwsAlbTargetGroupAttachmentRequired
, AwsAlbTargetGroupAttachment = AwsAlbTargetGroupAttachment
}
