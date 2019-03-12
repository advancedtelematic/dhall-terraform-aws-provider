
let AwsIamRolePolicyAttachmentOptional = {}

let AwsIamRolePolicyAttachmentRequired =
  { policy_arn : Text
  , role : Text
  }
let AwsIamRolePolicyAttachment = AwsIamRolePolicyAttachmentOptional //\\ AwsIamRolePolicyAttachmentRequired

in
{ AwsIamRolePolicyAttachment = AwsIamRolePolicyAttachment
}
