
let AwsOrganizationsPolicyAttachmentOptional = {}

let AwsOrganizationsPolicyAttachmentRequired =
  { policy_id: Text
  , target_id: Text
  }
let AwsOrganizationsPolicyAttachment = AwsOrganizationsPolicyAttachmentOptional //\\ AwsOrganizationsPolicyAttachmentRequired

in
{ AwsOrganizationsPolicyAttachment = AwsOrganizationsPolicyAttachment
}
