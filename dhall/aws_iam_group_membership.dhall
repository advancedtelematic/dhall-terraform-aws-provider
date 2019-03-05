
let AwsIamGroupMembershipOptional = {}

let AwsIamGroupMembershipRequired =
  { group: Text
  , name: Text
  , users: (List Text)
  }
let AwsIamGroupMembership = AwsIamGroupMembershipOptional //\\ AwsIamGroupMembershipRequired

in
{ AwsIamGroupMembership = AwsIamGroupMembership
}
