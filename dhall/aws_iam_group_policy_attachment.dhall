
let AwsIamGroupPolicyAttachmentOptional = {}

let AwsIamGroupPolicyAttachmentRequired =
  { group: Text
  , policy_arn: Text
  }
let AwsIamGroupPolicyAttachment = AwsIamGroupPolicyAttachmentOptional //\\ AwsIamGroupPolicyAttachmentRequired

in
{ AwsIamGroupPolicyAttachment = AwsIamGroupPolicyAttachment
}
