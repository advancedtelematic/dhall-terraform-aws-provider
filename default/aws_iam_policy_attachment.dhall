
let awsIamPolicyAttachment =
  { groups = None (List Text)
  , roles = None (List Text)
  , users = None (List Text)
  }

in
{ awsIamPolicyAttachment = awsIamPolicyAttachment
}
