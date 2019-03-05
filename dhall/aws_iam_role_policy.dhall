
let AwsIamRolePolicyOptional =
  { name: Optional Text
  , name_prefix: Optional Text
  }

let AwsIamRolePolicyRequired =
  { policy: Text
  , role: Text
  }
let AwsIamRolePolicy = AwsIamRolePolicyOptional //\\ AwsIamRolePolicyRequired

in
{ AwsIamRolePolicyOptional = AwsIamRolePolicyOptional
, AwsIamRolePolicyRequired = AwsIamRolePolicyRequired
, AwsIamRolePolicy = AwsIamRolePolicy
}
