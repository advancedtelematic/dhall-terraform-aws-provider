
let AwsIamPolicyAttachmentOptional =
  { groups: Optional (List Text)
  , roles: Optional (List Text)
  , users: Optional (List Text)
  }

let AwsIamPolicyAttachmentRequired =
  { name: Text
  , policy_arn: Text
  }
let AwsIamPolicyAttachment = AwsIamPolicyAttachmentOptional //\\ AwsIamPolicyAttachmentRequired

in
{ AwsIamPolicyAttachmentOptional = AwsIamPolicyAttachmentOptional
, AwsIamPolicyAttachmentRequired = AwsIamPolicyAttachmentRequired
, AwsIamPolicyAttachment = AwsIamPolicyAttachment
}
