
let AwsIamRoleOptional =
  { description : Optional Text
  , force_detach_policies : Optional Bool
  , max_session_duration : Optional Natural
  , name : Optional Text
  , name_prefix : Optional Text
  , path : Optional Text
  , permissions_boundary : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsIamRoleRequired =
  { assume_role_policy : Text }
let AwsIamRole = AwsIamRoleOptional //\\ AwsIamRoleRequired

in
{ AwsIamRoleOptional = AwsIamRoleOptional
, AwsIamRoleRequired = AwsIamRoleRequired
, AwsIamRole = AwsIamRole
}
