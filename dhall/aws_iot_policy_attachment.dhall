
let AwsIotPolicyAttachmentOptional = {}

let AwsIotPolicyAttachmentRequired =
  { policy: Text
  , target: Text
  }
let AwsIotPolicyAttachment = AwsIotPolicyAttachmentOptional //\\ AwsIotPolicyAttachmentRequired

in
{ AwsIotPolicyAttachment = AwsIotPolicyAttachment
}
