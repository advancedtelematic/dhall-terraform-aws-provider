
let AwsIamUserGroupMembershipOptional = {}

let AwsIamUserGroupMembershipRequired =
  { groups: (List Text)
  , user: Text
  }
let AwsIamUserGroupMembership = AwsIamUserGroupMembershipOptional //\\ AwsIamUserGroupMembershipRequired

in
{ AwsIamUserGroupMembership = AwsIamUserGroupMembership
}
