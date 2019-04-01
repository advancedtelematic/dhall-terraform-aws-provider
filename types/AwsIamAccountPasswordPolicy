
let AwsIamAccountPasswordPolicyOptional =
  { allow_users_to_change_password : Optional Bool
  , hard_expiry : Optional Bool
  , max_password_age : Optional Natural
  , minimum_password_length : Optional Natural
  , password_reuse_prevention : Optional Natural
  , require_lowercase_characters : Optional Bool
  , require_numbers : Optional Bool
  , require_symbols : Optional Bool
  , require_uppercase_characters : Optional Bool
  }

let AwsIamAccountPasswordPolicyRequired = {}
let AwsIamAccountPasswordPolicy = AwsIamAccountPasswordPolicyOptional //\\ AwsIamAccountPasswordPolicyRequired

in
{ AwsIamAccountPasswordPolicyOptional = AwsIamAccountPasswordPolicyOptional
, AwsIamAccountPasswordPolicyRequired = AwsIamAccountPasswordPolicyRequired
, AwsIamAccountPasswordPolicy = AwsIamAccountPasswordPolicy
}
