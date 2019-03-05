
let AwsAutoscalingAttachmentOptional =
  { alb_target_group_arn: Optional Text
  , elb: Optional Text
  }

let AwsAutoscalingAttachmentRequired =
  { autoscaling_group_name: Text }
let AwsAutoscalingAttachment = AwsAutoscalingAttachmentOptional //\\ AwsAutoscalingAttachmentRequired

in
{ AwsAutoscalingAttachmentOptional = AwsAutoscalingAttachmentOptional
, AwsAutoscalingAttachmentRequired = AwsAutoscalingAttachmentRequired
, AwsAutoscalingAttachment = AwsAutoscalingAttachment
}
