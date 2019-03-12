
let AwsIamUserPolicyAttachmentOptional = {}

let AwsIamUserPolicyAttachmentRequired =
  { policy_arn : Text
  , user : Text
  }
let AwsIamUserPolicyAttachment = AwsIamUserPolicyAttachmentOptional //\\ AwsIamUserPolicyAttachmentRequired

in
{ AwsIamUserPolicyAttachment = AwsIamUserPolicyAttachment
}
