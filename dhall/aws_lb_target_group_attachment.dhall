
let AwsLbTargetGroupAttachmentOptional =
  { availability_zone : Optional Text
  , port : Optional Natural
  }

let AwsLbTargetGroupAttachmentRequired =
  { target_group_arn : Text
  , target_id : Text
  }
let AwsLbTargetGroupAttachment = AwsLbTargetGroupAttachmentOptional //\\ AwsLbTargetGroupAttachmentRequired

in
{ AwsLbTargetGroupAttachmentOptional = AwsLbTargetGroupAttachmentOptional
, AwsLbTargetGroupAttachmentRequired = AwsLbTargetGroupAttachmentRequired
, AwsLbTargetGroupAttachment = AwsLbTargetGroupAttachment
}
