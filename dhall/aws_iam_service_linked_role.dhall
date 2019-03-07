
let AwsIamServiceLinkedRoleOptional =
  { custom_suffix: Optional Text
  , description: Optional Text
  }

let AwsIamServiceLinkedRoleRequired =
  { aws_service_name: Text }
let AwsIamServiceLinkedRole = AwsIamServiceLinkedRoleOptional //\\ AwsIamServiceLinkedRoleRequired

in
{ AwsIamServiceLinkedRoleOptional = AwsIamServiceLinkedRoleOptional
, AwsIamServiceLinkedRoleRequired = AwsIamServiceLinkedRoleRequired
, AwsIamServiceLinkedRole = AwsIamServiceLinkedRole
}
